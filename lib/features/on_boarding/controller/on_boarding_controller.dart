import 'package:electronics_store/core/constant/my_pages.dart';
import 'package:electronics_store/core/services/my_service.dart';
import 'package:electronics_store/data/static/my_text/on_boarding_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  // Dependencies
  MyService myService = Get.find();

  // Navigation Management
  // المتحكم المسؤول عن التنقل بين صفحات الـ PageView
  late PageController pageController;

  // State Properties
  // رقم الصفحة الحالية (يبدأ من 0)
  int currentPage = 0;

  // Methods
  void next();
  void skip();
  void getOnPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  void getOnPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void next() {
    // 1. التحقق أولاً: هل نحن في الصفحة الأخيرة؟
    if (currentPage >= onBoardingList.length - 1) {
      myService.sharedPreferences.setString("step", "1");
      Get.offAllNamed(MyPages.login);
    } else {
      // 2. إذا لم نكن في الأخيرة، ننتقل للتالية
      currentPage++;
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 900),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void skip() {
    myService.sharedPreferences.setString("step", "1");
    Get.offAllNamed(MyPages.login);
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
