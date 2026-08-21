import 'package:frontend_admin/app_translations.dart';
import 'package:frontend_admin/core/constant/app_color.dart';
import 'package:frontend_admin/core/constant/app_route.dart';
import 'package:frontend_admin/core/shared/handling_data_view.dart';
import 'package:frontend_admin/data/static/app_text.dart';
import 'package:frontend_admin/features/auth/feature/forget_password_features/reset_password/bloc/admin_reset_password_bloc.dart';
import 'package:frontend_admin/features/auth/feature/forget_password_features/reset_password/widgets/reset_password_form.dart';
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
      body: BlocConsumer<AdminResetPasswordBloc, AdminResetPasswordState>(
        listenWhen: (previous, current) => current.maybeWhen(
          success: () => true,
          failure: (_) => true,
          orElse: () => false,
        ),
        listener: (context, state) {
          state.maybeWhen(
            success: () => Navigator.pushNamedAndRemoveUntil(
              context,
              AppRoute.success,
              (route) => false,
              arguments: {'email': widget.email, 'password': password.text},
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
              onRetry: () => context.read<AdminResetPasswordBloc>().add(
                AdminResetPasswordEvent.resetPage(),
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
