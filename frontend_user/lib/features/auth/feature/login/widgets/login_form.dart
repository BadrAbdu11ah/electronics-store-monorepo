import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/function/alert_exit_app.dart';
import 'package:electronics_store/core/function/valid_input.dart';
import 'package:electronics_store/core/shared/custom_text_form.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/auth/feature/login/bloc/login_bloc.dart';
import 'package:electronics_store/features/auth/widgets/custom_button_auth.dart';
import 'package:electronics_store/features/auth/widgets/custom_logo.dart';
import 'package:electronics_store/features/auth/widgets/custom_text_body_auth.dart';
import 'package:electronics_store/features/auth/widgets/custom_text_convert.dart';
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
        // إظهار تنبيه الخروج من التطبيق
        alertExitApp(context);
      },
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Form(
              key: formstate,
              child: ListView(
                children: [
                  // شعار التطبيق المخصص
                  const CustomLogo(),
                  const SizedBox(height: 10),
                  // عنوان الترحب بالعميل
                  CustomTextTitleAuth(
                    text: AppTranslations.translate(
                      context,
                      AppText.welcomeBack,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // النص الإرشادي لشاشة الدخول
                  CustomTextBodyAuth(
                    text: AppTranslations.translate(
                      context,
                      AppText.loginDescription,
                    ),
                  ),
                  const SizedBox(height: 50),
                  // حقل إدخال البريد الإلكتروني
                  CustomTextForm(
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
                  // حقل إدخال كلمة المرور مع زر الإظهار/الإخفاء
                  CustomTextForm(
                    obscureText: isShowPassword,
                    onTapIcon: () {
                      // تبديل حالة رؤية النص
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
                  // رابط نسيان كلمة المرور
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: InkWell(
                      onTap: widget.isLoading
                          ? null // تعطيل الرابط أثناء جلب البيانات
                          : () {
                              // إغلاق لوحة المفاتيح والتوجيه لنسيان كلمة المرور
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
                  const SizedBox(height: 20),
                  // زر تسجيل الدخول بالبريد وكلمة المرور
                  CustomButtonAuth(
                    text: AppTranslations.translate(context, AppText.signIn),
                    onPressed: () {
                      if (widget.isLoading) return;
                      // فحص صحة الحقول
                      if (formstate.currentState?.validate() == true) {
                        // إغلاق الكيبورد
                        FocusScope.of(context).unfocus();
                        // إرسال حدث تسجيل الدخول المعتاد
                        context.read<LoginBloc>().add(
                          LoginEvent.submitted(
                            email: widget.email.text,
                            password: widget.password.text,
                          ),
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 15),
                  // فاصل زمني بصري بين خيارات الدخول
                  Row(
                    children: [
                      // خط فاصل جهة اليمين
                      const Expanded(child: Divider()),
                      // كلمة الفاصل
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "أو",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                      // خط فاصل جهة اليسار
                      const Expanded(child: Divider()),
                    ],
                  ),
                  const SizedBox(height: 15),
                  // زر تسجيل الدخول عبر حساب Google
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    // أيقونة Google
                    icon: const Icon(
                      Icons.g_mobiledata,
                      size: 28,
                      color: Colors.red,
                    ),
                    // نص الزر
                    label: const Text(
                      "تسجيل الدخول بواسطة Google",
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    onPressed: widget.isLoading
                        ? null // تعطيل الزر في حالة التحميل
                        : () {
                            // إغلاق الكيبورد
                            FocusScope.of(context).unfocus();
                            // إرسال حدث تسجيل الدخول عبر قوقل للـ Bloc
                            context.read<LoginBloc>().add(
                              const LoginEvent.loginWithGoogle(),
                            );
                          },
                  ),
                  const SizedBox(height: 20),
                  // رابط الانتقال لإنشاء حساب جديد
                  CustomTextConvert(
                    textone: AppTranslations.translate(
                      context,
                      AppText.dontHaveAccount,
                    ),
                    texttow: AppTranslations.translate(context, AppText.signUp),
                    onTap: () {
                      if (widget.isLoading) return;
                      // إغلاق لوحة المفاتيح والتوجيه لإنشاء حساب
                      FocusScope.of(context).unfocus();
                      Navigator.pushNamed(context, AppRoute.signUp);
                    },
                  ),
                ],
              ),
            ),
          ),

          // طبقة التظليل ومؤشر التحميل عند تفعيل isLoading
          if (widget.isLoading) ...[
            // حاجز شفاف لمنع النقر على الواجهة الخلفية
            const ModalBarrier(
              dismissible: false,
              color: Colors.black26, // تعتيم خفيف
            ),
            // مؤشر التحميل المخصص
            Center(
              child: AppLoadingWidget(), // الوجت المخصص للتحميل
            ),
          ],
        ],
      ),
    );
  }
}
