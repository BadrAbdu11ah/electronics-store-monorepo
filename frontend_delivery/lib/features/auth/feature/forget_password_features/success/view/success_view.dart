import 'package:electronics_store_delivery/app_translations.dart';
import 'package:electronics_store_delivery/core/constant/app_color.dart';
import 'package:electronics_store_delivery/core/constant/app_route.dart';
import 'package:electronics_store_delivery/core/function/alert_exit_app.dart';
import 'package:electronics_store_delivery/data/static/app_text.dart';
import 'package:electronics_store_delivery/features/auth/feature/forget_password_features/success/bloc/delivery_success_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuccessView extends StatelessWidget {
  final String email;
  final String password;
  const SuccessView({super.key, required this.email, required this.password});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeliverySuccessBloc, DeliverySuccessState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
              AppRoute.login,
              (route) => false,
              arguments: {'email': email, 'password': password},
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
