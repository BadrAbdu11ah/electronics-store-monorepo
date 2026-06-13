import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/auth/feature/sign_up_features/verfiy_code_sign_up/bloc/verfiy_code_sign_up_bloc.dart';
import 'package:electronics_store/features/auth/feature/sign_up_features/verfiy_code_sign_up/widgets/verfiy_code_sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerfiyCodeSignUpView extends StatefulWidget {
  final String email;

  const VerfiyCodeSignUpView({super.key, required this.email});

  @override
  State<VerfiyCodeSignUpView> createState() => _VerfiyCodeSignUpViewState();
}

class _VerfiyCodeSignUpViewState extends State<VerfiyCodeSignUpView> {
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

      body: BlocConsumer<VerfiyCodeSignUpBloc, VerfiyCodeSignUpState>(
        listener: (context, state) {
          state.maybeWhen(
            success: () => Navigator.pushNamedAndRemoveUntil(
              context,
              AppRoute.successSignUp,
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
              onRetry: () => context.read<VerfiyCodeSignUpBloc>().add(
                VerfiyCodeSignUpEvent.reset(),
              ),
            ),
            orElse: () => VerfiyCodeSignUpForm(email: widget.email),
          );
        },
      ),
    );
  }
}
