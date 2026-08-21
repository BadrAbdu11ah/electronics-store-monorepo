import 'package:frontend_admin/data/static/app_text.dart';
import 'package:frontend_admin/app_translations.dart';
import 'package:flutter/material.dart';

String? validInput(
  BuildContext context,
  String val,
  int min,
  int max,
  String type,
) {
  // 1. الفحص الأساسي للحقول الفارغة
  if (val.isEmpty) {
    return AppTranslations.translate(context, AppText.emptyField);
  }

  // 2. التحقق من طول النص المدخل أولاً
  if (val.length < min) {
    return AppTranslations.translate(context, AppText.inputTooShort);
  }

  if (val.length > max) {
    return AppTranslations.translate(context, AppText.inputTooLong);
  }

  // 3. التحقق من نمط البيانات المدخلة بناءً على النوع
  if (type == "username") {
    final RegExp usernameRegExp = RegExp(r'^[a-zA-Z][a-zA-Z0-9_]{2,29}$');
    if (!usernameRegExp.hasMatch(val)) {
      return AppTranslations.translate(context, AppText.invalidUsername);
    }
  }

  if (type == "nameAr") {
    // يسمح بالأحرف العربية والأرقام والمسافات
    final RegExp nameArRegExp = RegExp(r'^[\u0600-\u06FF0-9\s]+$');
    if (!nameArRegExp.hasMatch(val)) {
      return AppTranslations.translate(context, AppText.invalidNameAr);
    }
  }

  if (type == "name") {
    // يسمح بالأحرف الإنجليزية والأرقام والمسافات
    final RegExp nameRegExp = RegExp(r'^[a-zA-Z0-9\s]+$');
    if (!nameRegExp.hasMatch(val)) {
      return AppTranslations.translate(context, AppText.invalidName);
    }
  }

  if (type == "number") {
    // أرقام صحيحة فقط (للكمية ووقت التوصيل)
    final RegExp numberRegExp = RegExp(r'^[0-9]+$');
    if (!numberRegExp.hasMatch(val)) {
      return AppTranslations.translate(context, AppText.invalidNumber);
    }
  }

  if (type == "decimal") {
    // أرقام صحيحة أو عشرية (للسعر والخصم)
    final RegExp decimalRegExp = RegExp(r'^[0-9]+(\.[0-9]+)?$');
    if (!decimalRegExp.hasMatch(val)) {
      return AppTranslations.translate(context, AppText.invalidNumber);
    }
  }

  if (type == "email") {
    final RegExp emailRegExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );
    if (!emailRegExp.hasMatch(val)) {
      return AppTranslations.translate(context, AppText.invalidEmail);
    }
  }

  if (type == "phone") {
    final RegExp phoneRegExp = RegExp(r'^\+?[0-9]{7,15}$');
    if (!phoneRegExp.hasMatch(val)) {
      return AppTranslations.translate(context, AppText.invalidPhone);
    }
  }

  // نوع text للنصوص العامة والأوصاف (يكتفي بالفحص للحقول الفارغة والطول)
  return null;
}
