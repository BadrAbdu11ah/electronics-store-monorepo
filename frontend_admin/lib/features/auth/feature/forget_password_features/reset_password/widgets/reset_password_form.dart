import 'package:frontend_admin/core/function/valid_input.dart';
import 'package:frontend_admin/core/shared/handling_data_view.dart';
import 'package:frontend_admin/data/static/app_text.dart';
import 'package:frontend_admin/features/auth/feature/forget_password_features/reset_password/bloc/admin_reset_password_bloc.dart';
import 'package:frontend_admin/features/auth/widgets/custom_button_auth.dart';
import 'package:frontend_admin/features/auth/widgets/custom_text_body_auth.dart';
import 'package:frontend_admin/features/auth/widgets/custom_text_form_auth.dart';
import 'package:frontend_admin/features/auth/widgets/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordForm extends StatefulWidget {
  final bool isLoading;
  final String email;
  final TextEditingController password;
  final TextEditingController rePassword;
  const ResetPasswordForm({
    super.key,
    required this.password,
    required this.rePassword,
    required this.email,
    required this.isLoading,
  });

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isShowPassword = true;
  bool isShowRePassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Form(
        key: _formKey,
        child: Stack(
          children: [
            ListView(
              children: [
                // title
                CustomTextTitleAuth(text: AppText.newPassword), // New Password
                SizedBox(height: 10),
                // body
                CustomTextBodyAuth(
                  text: AppText.resetPasswordDescription,
                ), // Please enter your new password
                SizedBox(height: 55),
                // password
                CustomTextFormAuth(
                  obscureText: isShowPassword,
                  onTapIcon: () {
                    isShowPassword = !isShowPassword;
                  },
                  valid: (val) => validInput(context, val!, 3, 10, "password"),
                  hintText: AppText.enterPassword,
                  labelText: AppText.password,
                  iconData: isShowPassword
                      ? Icons.visibility_off
                      : Icons.visibility,
                  myController: widget.password,
                ),
                // re-enter password
                CustomTextFormAuth(
                  obscureText: isShowRePassword,
                  onTapIcon: () {
                    isShowRePassword = !isShowRePassword;
                  },
                  valid: (val) => validInput(context, val!, 3, 10, "password"),
                  hintText: AppText.enterPassword,
                  labelText: AppText.password,
                  iconData: isShowRePassword
                      ? Icons.visibility_off
                      : Icons.visibility,
                  myController: widget.rePassword,
                ),
                // button save
                CustomButtonAuth(
                  text: AppText.save, // Save
                  onPressed: () {
                    if (widget.isLoading) return;
                    if (widget.password.text != widget.rePassword.text) {
                      context.read<AdminResetPasswordBloc>().add(
                        AdminResetPasswordEvent.thePasswordDoesNotMatch(),
                      );
                      return;
                    }
                    context.read<AdminResetPasswordBloc>().add(
                      AdminResetPasswordEvent.resetPassword(
                        email: widget.email,
                        password: widget.password.text,
                      ),
                    );
                  },
                ),
              ],
            ),
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
