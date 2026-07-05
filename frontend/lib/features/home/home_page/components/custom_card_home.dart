import 'package:electronics_store/core/constant/app_color.dart';
import 'package:flutter/material.dart';

class CustomCardHome extends StatelessWidget {
  final String lang;
  final String title;
  final String subtitle;
  const CustomCardHome({
    super.key,
    required this.title,
    required this.subtitle,
    required this.lang,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Stack(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: AppColor.themeColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 20,
              ),
              title: Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              subtitle: Text(
                subtitle,
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
          Positioned(
            right: lang == "en" ? -25 : null,
            left: lang == "ar" ? -25 : null,
            top: -25,
            child: Container(
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                color: AppColor.themeBlackColor,
                borderRadius: BorderRadius.circular(160),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
