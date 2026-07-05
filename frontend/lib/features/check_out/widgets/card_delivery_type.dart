import 'package:electronics_store/core/constant/app_color.dart';
import 'package:flutter/material.dart';

class CardDeliveryType extends StatelessWidget {
  final String imageName;
  final String title;
  final bool active;
  final void Function() onCard;
  const CardDeliveryType({
    super.key,
    required this.imageName,
    required this.title,
    required this.active,
    required this.onCard,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCard,
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: active ? AppColor.themeBlackColor : null,
          border: active ? null : Border.all(color: AppColor.themeBlackColor!),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageName,
              width: 100,
              color: active ? AppColor.bgColorOnBoarding : null,
            ),
            Text(
              title,
              style: TextStyle(
                color: active
                    ? AppColor.bgColorOnBoarding
                    : AppColor.themeBlackColor,
                fontWeight: active ? FontWeight.bold : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
