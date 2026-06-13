import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/services/app_service.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SettingsController extends GetxController {
  // Dependencies
  MyService myService = Get.find();

  // Settings Properties
  bool notification = true;
  late List<Map<String, dynamic>> options;

  // Methods
  void logout();
  void goToAddressView();
}

class SettingsControllerImp extends SettingsController {
  @override
  void onInit() {
    options = [
      {
        "title": AppText.disableNotification.tr,
        "icon": Switch(value: notification, onChanged: (bool val) {}),
        "onTap": () {},
      },
      {
        "title": AppText.address.tr,
        "icon": Icon(Icons.location_on_outlined),
        "onTap": () {
          goToAddressView();
        },
      },
      {
        "title": AppText.aboutUs.tr,
        "icon": Icon(Icons.info_outlined),
        "onTap": () {},
      },
      {
        "title": AppText.contactUs.tr,
        "icon": Icon(Icons.phone_callback_outlined),
        "onTap": () {},
      },
      {
        "title": AppText.logout.tr,
        "icon": Icon(Icons.logout_outlined),
        "onTap": () {
          logout();
        },
      },
    ];

    super.onInit();
  }

  @override
  void logout() {
    myService.sharedPreferences.setString("step", "1");
    Get.offAllNamed(MyPages.login);
  }

  @override
  void goToAddressView() {
    Get.toNamed(MyPages.addressView);
  }
}
