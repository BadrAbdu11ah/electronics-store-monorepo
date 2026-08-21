import 'package:frontend_admin/core/constant/app_image_asset.dart';
import 'package:frontend_admin/data/static/app_text.dart';
import 'package:frontend_admin/data/model/on_boarding/on_boarding_model.dart';
import 'package:frontend_admin/app_translations.dart';
import 'package:flutter/material.dart';

List<OnBoardingModel> onBoardingList(BuildContext context) {
  return [
    // Discover
    OnBoardingModel(
      image: AppImageAsset.onboaridngImageOne,
      title: AppTranslations.translate(context, AppText.onBoardingTitle1),
      body: AppTranslations.translate(context, AppText.onBoardingBody1),
    ),
    // Make the payment
    OnBoardingModel(
      image: AppImageAsset.onboaridngImageTow,
      title: AppTranslations.translate(context, AppText.onBoardingTitle2),
      body: AppTranslations.translate(context, AppText.onBoardingBody2),
    ),
    // Enjoy your shopping
    OnBoardingModel(
      image: AppImageAsset.onboaridngImageThree,
      title: AppTranslations.translate(context, AppText.onBoardingTitle3),
      body: AppTranslations.translate(context, AppText.onBoardingBody3),
    ),
  ];
}

const int onBoardingDataLength = 3;
