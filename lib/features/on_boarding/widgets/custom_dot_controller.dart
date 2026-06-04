import 'package:electronics_store/features/on_boarding/controller/on_boarding_controller.dart';
import 'package:electronics_store/core/constant/my_color.dart';
import 'package:electronics_store/data/static/my_text.dart';
import 'package:electronics_store/data/static/my_text/on_boarding_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDotControllerOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // SKIP
          InkWell(
            onTap: () => controller.skip(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                MyText.skip.tr,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),

          // Pagination Dots
          Row(
            children: List.generate(onBoardingList.length, (index) {
              return AnimatedContainer(
                margin: const EdgeInsets.only(right: 5),
                duration: const Duration(milliseconds: 600),
                height: 6,
                width: controller.currentPage == index ? 15 : 6,
                decoration: BoxDecoration(
                  color: MyColor.themeColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            }),
          ),

          // NEXT & FINISH
          InkWell(
            onTap: () => controller.next(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                controller.currentPage != onBoardingList.length - 1
                    ? MyText.next.tr
                    : MyText.finish.tr,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: MyColor.themeColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
