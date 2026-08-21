import 'package:electronics_store_delivery/app_translations.dart';
import 'package:electronics_store_delivery/data/static/app_text.dart';
import 'package:electronics_store_delivery/features/auth/feature/forget_password_features/verfiy_code/bloc/delivery_verfiy_code_bloc.dart';
import 'package:electronics_store_delivery/features/auth/widgets/custom_text_body_auth.dart';
import 'package:electronics_store_delivery/features/auth/widgets/custom_text_title_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class DeliveryVerfiyCodeForm extends StatelessWidget {
  final String email;
  const DeliveryVerfiyCodeForm({super.key, required this.email});

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
              context.read<DeliveryVerfiyCodeBloc>().add(
                DeliveryVerfiyCodeEvent.submitted(
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
