import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/core/constant/app_image_asset.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';

RatingDialog _dialog(
  BuildContext context,
  Function(double rating, String comment) onSubmitted,
) {
  return RatingDialog(
    initialRating: 1.0,
    // your app's name?
    title: Text(
      AppTranslations.translate(context, AppText.rateOrder),
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ),
    // encourage your user to leave a high rating?
    message: Text(
      AppTranslations.translate(context, AppText.rateOrderMessage),
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 15),
    ),
    // your app's logo?
    image: Image.asset(AppImageAsset.logo, height: 100, width: 100),
    submitButtonText: AppTranslations.translate(
      context,
      AppText.rateOrderSubmitButton,
    ),
    submitButtonTextStyle: TextStyle(
      fontSize: 15,
      color: AppColor.themeBlackColor,
      fontWeight: FontWeight.bold,
    ),
    commentHint: AppTranslations.translate(
      context,
      AppText.rateOrderCommentHint,
    ),
    onCancelled: () => print('cancelled'),
    onSubmitted: (response) {
      onSubmitted(response.rating, response.comment);
    },
  );
}

void showRatingDialog(
  BuildContext context, {
  required Function(double rating, String comment) onSubmitted,
}) {
  // show the dialog
  showDialog(
    context: context,
    barrierDismissible: true, // set to false if you want to force a rating
    builder: (context) => _dialog(context, onSubmitted),
  );
}
