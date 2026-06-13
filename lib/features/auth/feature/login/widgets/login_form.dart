import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/function/alert_exit_app.dart';
import 'package:electronics_store/core/function/valid_input.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/auth/feature/login/bloc/login_bloc.dart';
import 'package:electronics_store/features/auth/widgets/custom_button_auth.dart';
import 'package:electronics_store/features/auth/widgets/custom_logo.dart';
import 'package:electronics_store/features/auth/widgets/custom_text_body_auth.dart';
import 'package:electronics_store/features/auth/widgets/custom_text_convert.dart';
import 'package:electronics_store/features/auth/widgets/custom_text_form_auth.dart';
import 'package:electronics_store/features/auth/widgets/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatefulWidget {
  final bool isLoading;
  final TextEditingController email;
  final TextEditingController password;

  const LoginForm({
    super.key,
    required this.isLoading,
    required this.email,
    required this.password,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> formstate = GlobalKey();
  bool isShowPassword = true;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;
        // منع الخروج أثناء التحميل لحماية دورة البيانات
        if (!widget.isLoading) {
          alertExitApp(context);
        }
      },
      child: Stack(
        // استخدام Stack يتيح لنا رص الطبقات فوق بعضها
        children: [
          // // الطبقة الأولى: الـ Form الطبيعي الخاص بك (ثابت ومستقر دائماً)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Form(
              key: formstate,
              child: ListView(
                children: [
                  const CustomLogo(),
                  const SizedBox(height: 10),
                  CustomTextTitleAuth(
                    text: AppTranslations.translate(
                      context,
                      AppText.welcomeBack,
                    ),
                  ),
                  const SizedBox(height: 10),
                  CustomTextBodyAuth(
                    text: AppTranslations.translate(
                      context,
                      AppText.loginDescription,
                    ),
                  ),
                  const SizedBox(height: 50),
                  CustomTextFormAuth(
                    valid: (val) => validInput(context, val!, 5, 20, "email"),
                    hintText: AppTranslations.translate(
                      context,
                      AppText.enterEmail,
                    ),
                    labelText: AppTranslations.translate(
                      context,
                      AppText.email,
                    ),
                    iconData: Icons.email_outlined,
                    myController: widget.email,
                  ),
                  const SizedBox(height: 20),
                  CustomTextFormAuth(
                    obscureText: isShowPassword,
                    onTapIcon: () {
                      setState(() {
                        isShowPassword = !isShowPassword;
                      });
                    },
                    valid: (val) =>
                        validInput(context, val!, 3, 10, "password"),
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
                  const SizedBox(height: 10),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: InkWell(
                      onTap: widget.isLoading
                          ? null // تعطيل الرابط أثناء التحميل
                          : () {
                              FocusScope.of(context).unfocus();
                              Navigator.pushNamed(
                                context,
                                AppRoute.forgetPassword,
                              );
                            },
                      child: Text(
                        AppTranslations.translate(
                          context,
                          AppText.forgetPassword,
                        ),
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  CustomButtonAuth(
                    text: AppTranslations.translate(context, AppText.signIn),
                    onPressed: () {
                      if (widget.isLoading) return;
                      if (formstate.currentState?.validate() == true) {
                        FocusScope.of(context).unfocus();
                        context.read<LoginBloc>().add(
                          LoginEvent.submitted(
                            email: widget.email.text,
                            password: widget.password.text,
                          ),
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 30),
                  CustomTextConvert(
                    textone: AppTranslations.translate(
                      context,
                      AppText.dontHaveAccount,
                    ),
                    texttow: AppTranslations.translate(context, AppText.signUp),
                    onTap: () {
                      if (widget.isLoading) return;
                      FocusScope.of(context).unfocus();
                      Navigator.pushNamed(context, AppRoute.signUp);
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
      ),
    );
  }
}
