import 'package:frontend_admin/app_translations.dart';
import 'package:frontend_admin/core/constant/app_route.dart';
import 'package:frontend_admin/core/shared/handling_data_view.dart';
import 'package:frontend_admin/data/static/app_text.dart';
import 'package:frontend_admin/features/auth/feature/forget_password_features/verfiy_code/bloc/admin_verfiy_code_bloc.dart';
import 'package:frontend_admin/features/auth/feature/forget_password_features/verfiy_code/widgets/admin_verfiy_code_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminVerfiyCodeView extends StatelessWidget {
  final String email;

  const AdminVerfiyCodeView({super.key, required this.email});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTranslations.translate(context, AppText.verifyCodeTitle),
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.normal),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),

      body: BlocConsumer<AdminVerfiyCodeBloc, AdminVerfiyCodeState>(
        listener: (context, state) {
          state.maybeWhen(
            success: () => Navigator.pushNamedAndRemoveUntil(
              context,
              AppRoute.resetPassword,
              (route) => false,
            ),
            failure: (errorKey) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(AppTranslations.translate(context, errorKey)),
                backgroundColor: Colors.red,
              ),
            ),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => AppLoadingWidget(),
            serverFailure: (errorMessage) => AppErrorWidget(
              message: errorMessage,
              onRetry: () => context.read<AdminVerfiyCodeBloc>().add(
                AdminVerfiyCodeEvent.reset(),
              ),
            ),
            orElse: () => AdminVerfiyCodeForm(email: email),
          );
        },
      ),
    );
  }
}
