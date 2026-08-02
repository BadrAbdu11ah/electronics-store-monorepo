import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/services/notification_service.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/auth/feature/login/bloc/login_bloc.dart';
import 'package:electronics_store/features/auth/feature/login/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatefulWidget {
  final String? email;
  final String? password;
  const LoginView({super.key, this.email, this.password});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController(text: widget.email);
    passwordController = TextEditingController(text: widget.password);
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.bgColorOnBoarding,
        title: Text(
          AppTranslations.translate(context, AppText.signIn),
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.normal),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          FocusScope.of(context).unfocus();
          state.maybeWhen(
            accountNotActive: () => AwesomeDialog(
              context: context,
              dialogType: DialogType.warning,
              animType: AnimType.rightSlide,
              title: AppTranslations.translate(context, AppText.warning),
              desc: AppTranslations.translate(
                context,
                AppText.accountNotActive,
              ),
              btnOkOnPress: () {
                context.read<LoginBloc>().add(
                  LoginEvent.resendCode(email: emailController.text),
                );
              },
              btnOkText: AppTranslations.translate(
                context,
                AppText.activateNow,
              ),
            ).show(),
            successResendCode: () => Navigator.pushNamed(
              context,
              AppRoute.verifyCodeSignUp,
              arguments: {"email": emailController.text},
            ),
            success: () async {
              if (context.mounted) {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  AppRoute.homeScreen,
                  (route) => false,
                );
              }
              await NotificationService.initialize();
            },
            failure: (errorMessage) =>
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      AppTranslations.translate(context, errorMessage),
                    ),
                    backgroundColor: Colors.redAccent,
                  ),
                ),
            orElse: () {},
          );
        },

        builder: (context, state) {
          final isLoading = state.maybeWhen(
            loading: () => true,
            orElse: () => false,
          );

          return state.maybeWhen(
            serverFailure: (errorMessage) => AppErrorWidget(
              message: errorMessage,
              onRetry: () {
                context.read<LoginBloc>().add(const LoginEvent.reset());
              },
            ),
            orElse: () => LoginForm(
              isLoading: isLoading,
              email: emailController,
              password: passwordController,
            ),
          );
        },
      ),
    );
  }
}
