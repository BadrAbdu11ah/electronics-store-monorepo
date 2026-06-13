import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/localization/change_local.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/choose_language/widgets/custom_button_lang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseLanguage extends GetView<LocaleController> {
  const ChooseLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ---------- Choose Language ----------
            Text(
              AppText.titleChooseLanguage.tr,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 10),

            // Arabic
            CustomButtonLang(
              lang: AppText.arabic.tr,
              onPressed: () {
                controller.changeLang("ar");
                Get.offNamed(MyPages.onBoarding);
              },
            ),

            // English
            CustomButtonLang(
              lang: AppText.english.tr,
              onPressed: () {
                controller.changeLang("en");
                Get.offNamed(MyPages.onBoarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
