import 'package:electronics_store/core/constant/app_color.dart';
import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const CustomButtonAuth({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      padding: EdgeInsets.symmetric(vertical: 15),
      color: AppColor.themeColor,
      textColor: Colors.white,
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
