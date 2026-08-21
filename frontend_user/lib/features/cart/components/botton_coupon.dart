import 'package:electronics_store/core/constant/app_color.dart';
import 'package:flutter/material.dart';

class BottonCoupon extends StatelessWidget {
  final String title;
  final void Function() onButton;
  const BottonCoupon({super.key, required this.title, required this.onButton});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,

      child: MaterialButton(
        onPressed: onButton,
        color: AppColor.themeBlackColor,
        child: Text(title, style: TextStyle(color: Colors.white, fontSize: 18)),
      ),
    );
  }
}
