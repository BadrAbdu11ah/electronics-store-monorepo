import 'package:electronics_store/features/on_boarding/controller/on_boarding_controller.dart';
import 'package:electronics_store/data/static/my_text/on_boarding_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) => controller.getOnPageChanged(value),
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center, // التوسيط العمودي
          children: [
            Image.asset(
              onBoardingList[index].image,
              height: Get.width * 0.7, // جعل حجم الصورة متناسب مع عرض الشاشة
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 40), // مسافة أكبر بين الصورة والنص
            Text(
              onBoardingList[index].title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 20),
            Container(
              // تغليف النص لتحديد العرض (Margin)
              width: double.infinity,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                onBoardingList[index].body,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  height: 1.5, // تحسين المسافة بين السطور للقراءة
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
