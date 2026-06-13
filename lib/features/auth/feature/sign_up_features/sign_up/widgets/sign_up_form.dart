import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/function/valid_input.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/auth/feature/sign_up_features/sign_up/bloc/sign_up_bloc.dart';
import 'package:electronics_store/features/auth/widgets/custom_button_auth.dart';
import 'package:electronics_store/features/auth/widgets/custom_text_convert.dart';
import 'package:electronics_store/features/auth/widgets/custom_text_form_auth.dart';
import 'package:electronics_store/features/auth/widgets/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatefulWidget {
  final bool isLoading;
  final TextEditingController username;
  final TextEditingController email;
  final TextEditingController password;
  final TextEditingController phone;
  const SignUpForm({
    super.key,
    required this.username,
    required this.email,
    required this.password,
    required this.phone,
    required this.isLoading,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  GlobalKey<FormState> formstate = GlobalKey();
  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Form(
            key: formstate,
            child: ListView(
              children: [
                CustomTextTitleAuth(
                  text: AppTranslations.translate(
                    context,
                    AppText.signUpDescription,
                  ),
                ),
                const SizedBox(height: 55),
                CustomTextFormAuth(
                  valid: (val) => validInput(context, val!, 5, 20, "username"),
                  hintText: AppTranslations.translate(
                    context,
                    AppText.enterUsername,
                  ),
                  labelText: AppTranslations.translate(
                    context,
                    AppText.username,
                  ),
                  iconData: Icons.person_outline,
                  myController: widget.username,
                ),
                CustomTextFormAuth(
                  valid: (val) => validInput(context, val!, 5, 20, "email"),
                  hintText: AppTranslations.translate(
                    context,
                    AppText.enterEmail,
                  ),
                  labelText: AppTranslations.translate(context, AppText.email),
                  iconData: Icons.email_outlined,
                  myController: widget.email,
                ),
                CustomTextFormAuth(
                  obscureText: isShowPassword,
                  onTapIcon: widget.isLoading
                      ? null
                      : () {
                          isShowPassword = !isShowPassword;
                        },
                  valid: (val) => validInput(context, val!, 3, 10, "password"),
                  hintText: AppTranslations.translate(
                    context,
                    AppText.enterPassword,
                  ),
                  labelText: AppTranslations.translate(
                    context,
                    AppText.password,
                  ),
                  iconData: isShowPassword
                      ? Icons.visibility_off
                      : Icons.visibility,
                  myController: widget.password,
                ),
                CustomTextFormAuth(
                  valid: (val) => validInput(context, val!, 2, 10, "phone"),
                  hintText: AppTranslations.translate(
                    context,
                    AppText.enterPhone,
                  ),
                  labelText: AppTranslations.translate(context, AppText.phone),
                  iconData: Icons.phone_android_outlined,
                  myController: widget.phone,
                  isNumber: true,
                ),
                const SizedBox(height: 10),
                CustomButtonAuth(
                  text: AppTranslations.translate(context, AppText.signIn),
                  onPressed: () {
                    if (widget.isLoading) return;
                    if (formstate.currentState?.validate() == true) {
                      context.read<SignUpBloc>().add(
                        SignUpEvent.submitted(
                          username: widget.username.text,
                          email: widget.email.text,
                          password: widget.password.text,
                          phone: widget.phone.text,
                        ),
                      );
                    }
                  },
                ),
                const SizedBox(height: 30),
                CustomTextConvert(
                  textone: AppTranslations.translate(
                    context,
                    AppText.alreadyHaveAccount,
                  ),
                  texttow: AppTranslations.translate(context, AppText.goSignIn),
                  onTap: () {
                    if (widget.isLoading) return;
                    FocusScope.of(context).unfocus();
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      AppRoute.login,
                      (route) => false,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        // // الطبقة الثانية: شاشة التحميل الكاملة (تظهر فقط عندما يتفعل الـ Loading)
        if (widget.isLoading) ...[
          // 1. حاجز شفاف يمنع المستخدم من الضغط على أي زر خلفه
          const ModalBarrier(
            dismissible: false,
            color: Colors.black26, // تعتيم خفيف وأنيق للشاشة (25% سواد)
          ),
          // 2. مؤشر التحميل متمركز في منتصف الشاشة تماماً
          Center(
            child: AppLoadingWidget(), // الوجت المخصص للتحميل
          ),
        ],
      ],
    );
  }
}
