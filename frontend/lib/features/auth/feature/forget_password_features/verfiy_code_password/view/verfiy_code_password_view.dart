import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/verfiy_code_password/bloc/verfiy_code_password_bloc.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/verfiy_code_password/widgets/verfiy_code_password_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerfiyCodePasswordView extends StatefulWidget {
  final String email;

  const VerfiyCodePasswordView({super.key, required this.email});

  @override
  State<VerfiyCodePasswordView> createState() => _VerfiyCodePasswordViewState();
}

class _VerfiyCodePasswordViewState extends State<VerfiyCodePasswordView> {
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

      body: BlocConsumer<VerfiyCodePasswordBloc, VerfiyCodePasswordState>(
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
              onRetry: () => context.read<VerfiyCodePasswordBloc>().add(
                VerfiyCodePasswordEvent.reset(),
              ),
            ),
            orElse: () => VerfiyCodePasswordForm(email: widget.email),
          );
        },
      ),
    );
  }
}
