import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/features/auth/feature/sign_up_features/sign_up/bloc/sign_up_bloc.dart';
import 'package:electronics_store/features/auth/feature/sign_up_features/sign_up/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;

  @override
  void initState() {
    username = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    password.dispose();
    phone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SignUpBloc, SignUpState>(
        listener: (context, state) {
          FocusScope.of(context).unfocus();
          state.maybeWhen(
            success: (email) => Navigator.pushReplacementNamed(
              context,
              AppRoute.verifyCodeSignUp,
              arguments: {'email': email},
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
        buildWhen: (previous, current) {
          return current.maybeWhen(
            loading: () => true,
            initial: () => true,
            serverFailure: (errorMessage) => true,
            orElse: () => false,
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
                context.read<SignUpBloc>().add(SignUpEvent.reset());
              },
            ),
            orElse: () => SignUpForm(
              // يضمن إعادة بناء حالة الفورم
              key: const ValueKey('sign_up_form_key'),
              username: username,
              email: email,
              password: password,
              phone: phone,
              isLoading: isLoading,
            ),
          );
        },
      ),
    );
  }
}
