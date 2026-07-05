import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/function/alert_exit_app.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/success_reset_password/bloc/success_reset_password_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuccessResetPasswordView extends StatefulWidget {
  final String email;
  final String password;
  const SuccessResetPasswordView({
    super.key,
    required this.email,
    required this.password,
  });

  @override
  State<SuccessResetPasswordView> createState() =>
      _SuccessResetPasswordViewState();
}

class _SuccessResetPasswordViewState extends State<SuccessResetPasswordView> {
  @override
  void initState() {
    context.read<SuccessResetPasswordBloc>().add(
      SuccessResetPasswordEvent.started(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SuccessResetPasswordBloc, SuccessResetPasswordState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
              AppRoute.login,
              (route) => false,
              arguments: {'email': widget.email, 'password': widget.password},
            );
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppTranslations.translate(context, AppText.successTitle),
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontWeight: FontWeight.normal,
              color: AppColor.themeColor,
            ),
          ),
          elevation: 0.0,
          centerTitle: true,
        ),

        body: PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) {
            if (didPop) return;

            alertExitApp(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.check_circle_outline,
                  size: 200,
                  color: AppColor.themeColor,
                ),
                Text(
                  AppTranslations.translate(context, AppText.successMessage),
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 10),
                Text(
                  AppTranslations.translate(
                    context,
                    AppText.successDescription,
                  ),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
