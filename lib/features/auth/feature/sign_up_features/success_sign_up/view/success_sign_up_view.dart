import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/core/function/alert_exit_app.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/auth/feature/sign_up_features/success_sign_up/bloc/success_sign_up_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuccessSignUpView extends StatefulWidget {
  const SuccessSignUpView({super.key});

  @override
  State<SuccessSignUpView> createState() => _SuccessSignUpViewState();
}

class _SuccessSignUpViewState extends State<SuccessSignUpView> {
  @override
  void initState() {
    context.read<SuccessSignUpBloc>().add(SuccessSignUpEvent.started());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                AppTranslations.translate(context, AppText.successDescription),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
