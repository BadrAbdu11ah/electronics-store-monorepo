import 'package:frontend_admin/app_translations.dart';
import 'package:frontend_admin/data/static/app_text.dart';
import 'package:frontend_admin/features/auth/feature/forget_password_features/verfiy_code/bloc/admin_verfiy_code_bloc.dart';
import 'package:frontend_admin/features/auth/widgets/custom_text_body_auth.dart';
import 'package:frontend_admin/features/auth/widgets/custom_text_title_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class AdminVerfiyCodeForm extends StatelessWidget {
  final String email;
  const AdminVerfiyCodeForm({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: ListView(
        children: [
          CustomTextTitleAuth(
            text: AppTranslations.translate(
              context,
              AppText.verifyCodeSubtitle,
            ),
          ),
          const SizedBox(height: 10),
          CustomTextBodyAuth(
            text: AppTranslations.translate(
              context,
              AppText.verifyCodeDescription,
            ),
          ),
          const SizedBox(height: 55),
          OtpTextField(
            numberOfFields: 5,
            borderColor: const Color(0xFF512DA8),
            showFieldAsBox: true,
            onCodeChanged: (String code) {},
            onSubmit: (String verificationCode) {
              context.read<AdminVerfiyCodeBloc>().add(
                AdminVerfiyCodeEvent.submitted(
                  email: email,
                  verificationCode: verificationCode,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
