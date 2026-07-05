import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/function/valid_input.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/auth/feature/forget_password_features/forget_password/bloc/forget_password_bloc.dart';
import 'package:electronics_store/features/auth/widgets/custom_button_auth.dart';
import 'package:electronics_store/features/auth/widgets/custom_text_body_auth.dart';
import 'package:electronics_store/features/auth/widgets/custom_text_form_auth.dart';
import 'package:electronics_store/features/auth/widgets/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordForm extends StatefulWidget {
  final bool isLoading;
  final TextEditingController email;
  const ForgetPasswordForm({
    super.key,
    required this.email,
    required this.isLoading,
  });

  @override
  State<ForgetPasswordForm> createState() => _ForgetPasswordFormState();
}

class _ForgetPasswordFormState extends State<ForgetPasswordForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Form(
        key: formKey,
        child: Stack(
          children: [
            ListView(
              children: [
                // title
                CustomTextTitleAuth(
                  text: AppTranslations.translate(
                    context,
                    AppText.forgetPasswordTitle,
                  ),
                ), // Check Email
                const SizedBox(height: 10),

                // body
                CustomTextBodyAuth(
                  text: AppTranslations.translate(
                    context,
                    AppText.forgetPasswordDescription,
                  ),
                ), // Please enter your email...
                const SizedBox(height: 55),

                // email
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
                const SizedBox(height: 10),

                // Check button
                CustomButtonAuth(
                  text: AppTranslations.translate(
                    context,
                    AppText.forgetPasswordCheck,
                  ), // Check
                  onPressed: () {
                    if (widget.isLoading) return;
                    if (formKey.currentState!.validate()) {
                      context.read<ForgetPasswordBloc>().add(
                        ForgetPasswordEvent.checkEmail(widget.email.text),
                      );
                    }
                  },
                ),
              ],
            ),
            // الطبقة الثانية: شاشة التحميل الكاملة (تظهر فقط عندما يتفعل الـ Loading)
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
      ),
    );
  }
}
