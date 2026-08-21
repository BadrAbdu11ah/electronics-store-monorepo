import 'package:electronics_store_delivery/app_translations.dart';
import 'package:electronics_store_delivery/core/constant/app_color.dart';
import 'package:electronics_store_delivery/core/constant/app_route.dart';
import 'package:electronics_store_delivery/core/services/notification_service.dart';
import 'package:electronics_store_delivery/core/shared/handling_data_view.dart';
import 'package:electronics_store_delivery/data/static/app_text.dart';
import 'package:electronics_store_delivery/features/auth/feature/login/bloc/delivery_login_bloc.dart';
import 'package:electronics_store_delivery/features/auth/feature/login/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
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
      body: BlocConsumer<DeliveryLoginBloc, DeliveryLoginState>(
        listenWhen: (previous, current) => current.maybeWhen(
          success: () => true,
          failure: (errorMessage) => true,
          orElse: () => false,
        ),
        listener: (context, state) {
          FocusScope.of(context).unfocus();
          state.whenOrNull(
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
                context.read<DeliveryLoginBloc>().add(
                  const DeliveryLoginEvent.reset(),
                );
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
