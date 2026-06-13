import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/reset_password/bloc/reset_password_bloc.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/reset_password/widgets/reset_password_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordView extends StatefulWidget {
  final String email;
  const ResetPasswordView({super.key, required this.email});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  late TextEditingController password;
  late TextEditingController rePassword;

  @override
  void initState() {
    super.initState();
    password = TextEditingController();
    rePassword = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.bgColorOnBoarding,
        title: Text(
          AppTranslations.translate(
            context,
            AppText.resetPasswordTitle,
          ), // Reset Password
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.normal),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
        listenWhen: (previous, current) => current.maybeWhen(
          success: () => true,
          failure: (_) => true,
          orElse: () => false,
        ),
        listener: (context, state) {
          state.maybeWhen(
            success: () => Navigator.pushNamedAndRemoveUntil(
              context,
              AppRoute.successResetPassword,
              (route) => false,
            ),
            failure: (errorKey) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(AppTranslations.translate(context, errorKey)),
                ),
              );
            },
            orElse: () {},
          );
        },
        buildWhen: (previous, current) =>
            current.maybeWhen(serverFailure: (_) => true, orElse: () => false),
        builder: (context, state) {
          final isLoading = state.maybeWhen(
            loading: () => true,
            orElse: () => false,
          );
          return state.maybeWhen(
            serverFailure: (errorMessage) => AppErrorWidget(
              message: errorMessage,
              onRetry: () => context.read<ResetPasswordBloc>().add(
                ResetPasswordEvent.resetPage(),
              ),
            ),
            orElse: () => ResetPasswordForm(
              email: widget.email,
              password: password,
              rePassword: rePassword,
              isLoading: isLoading,
            ),
          );
        },
      ),
    );
  }
}
