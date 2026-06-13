import 'package:electronics_store/data/static/app_text/cart.dart';
import 'package:electronics_store/data/static/app_text/checkout.dart';
import 'package:electronics_store/data/static/app_text/choose_language_text.dart';
import 'package:electronics_store/data/static/app_text/error_messages.dart';
import 'package:electronics_store/data/static/app_text/forget_password/forget_password.dart';
import 'package:electronics_store/data/static/app_text/home/home_page.dart';
import 'package:electronics_store/data/static/app_text/auth/login.dart';
import 'package:electronics_store/data/static/app_text/home/settings.dart';
import 'package:electronics_store/data/static/app_text/items/items.dart';
import 'package:electronics_store/data/static/app_text/on_boarding.dart';
import 'package:electronics_store/data/static/app_text/forget_password/reset_password.dart';
import 'package:electronics_store/data/static/app_text/auth/sign_up.dart';
import 'package:electronics_store/data/static/app_text/auth/success.dart';
import 'package:electronics_store/data/static/app_text/orders/order.dart';
import 'package:electronics_store/data/static/app_text/orders/order_details.dart';
import 'package:electronics_store/data/static/app_text/valid_input.dart';
import 'package:electronics_store/data/static/app_text/forget_password/verify_code.dart';
import 'package:flutter/material.dart';

class AppTranslations {
  // قاموس مركزي يحتوي على جميع النصوص المترجمة
  static final Map<String, Map<String, String>> keys = {
    "ar": {
      ...chooseLanguageAr,
      ...onBoardingAr,
      ...loginAr,
      ...signUpAr,
      ...forgetPasswordAr,
      ...verifyCodeAr,
      ...resetPasswordAr,
      ...successAr,
      ...validInputAr,
      ...errorMessagesAr,
      ...homeAr,
      ...settingsAr,
      ...itemsAr,
      ...cartAr,
      ...checkoutAr,
      ...ordersAr,
      ...statusAr,
      ...orderDetailsAr,
    },
    "en": {
      ...chooseLanguageEn,
      ...onBoardingEn,
      ...loginEn,
      ...signUpEn,
      ...forgetPasswordEn,
      ...verifyCodeEn,
      ...resetPasswordEn,
      ...successEn,
      ...validInputEn,
      ...errorMessagesEn,
      ...homeEn,
      ...settingsEn,
      ...itemsEn,
      ...cartEn,
      ...checkoutEn,
      ...ordersEn,
      ...statusEn,
      ...orderDetailsEn,
    },
  };

  // دالة لجلب النص المترجم بناءً على سياق الشاشة الحالي (BuildContext)
  static String translate(BuildContext context, String key) {
    // جلب كود اللغة الحالية المتوفرة في الـ MaterialApp
    final String langCode = Localizations.localeOf(context).languageCode;

    // إرجاع النص المترجم، وإذا لم يجد المفتاح يعيد المفتاح نفسه كحماية من الـ Crash
    return keys[langCode]?[key] ?? key;
  }
}
