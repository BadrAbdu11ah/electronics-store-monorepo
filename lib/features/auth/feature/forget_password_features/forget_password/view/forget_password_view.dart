import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/forget_password/bloc/forget_password_bloc.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/forget_password/widgets/forget_password_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordView extends StatefulWidget {
  final String email;
  const ForgetPasswordView({super.key, required this.email});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  late TextEditingController emailController;
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController(text: widget.email);
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.bgColorOnBoarding,
        title: Text(
          AppTranslations.translate(context, AppText.forgetPassword),
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.normal),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: BlocConsumer<ForgetPasswordBloc, ForgetPasswordState>(
        listenWhen: (previous, current) => current.maybeWhen(
          success: () => true,
          failure: (_) => true,
          orElse: () => false,
        ),
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            success: () {
              Navigator.of(context).pushReplacementNamed(
                AppRoute.verifyCodePassword,
                arguments: {'email': widget.email},
              );
            },
            failure: (errorKey) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(AppTranslations.translate(context, errorKey)),
                  backgroundColor: Colors.red,
                ),
              );
            },
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
            serverFailure: (errorKey) => AppErrorWidget(
              message: errorKey,
              onRetry: () => context.read<ForgetPasswordBloc>().add(
                const ForgetPasswordEvent.resetPage(),
              ),
            ),
            orElse: () => ForgetPasswordForm(
              email: emailController,
              isLoading: isLoading,
            ),
          );
        },
      ),
    );
  }
}
