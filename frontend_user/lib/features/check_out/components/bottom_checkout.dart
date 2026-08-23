// شاشة أسفل إتمام الشراء
import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/cart/function/cart_bloc_helper.dart';
import 'package:electronics_store/features/check_out/bloc/check_out_bloc.dart';
import 'package:flutter/material.dart';

class BottomCheckout extends StatelessWidget {
  final CheckOutState state;
  final String textButton;

  final void Function() onCheckout;
  const BottomCheckout({
    super.key,
    required this.textButton,
    required this.onCheckout,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    // الواجهة الرئيسية للعرض
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // حاوية تفاصيل الفاتورة
        Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: AppColor.themeColor!),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // السعر الإجمالي قبل الخصم
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      AppTranslations.translate(context, AppText.price),
                      style: TextStyle(color: AppColor.themeBlackColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      state.lang == "ar"
                          ? "${state.subtotalPrice} ر.س"
                          : "${state.subtotalPrice} SAR",
                      style: TextStyle(color: AppColor.themeBlackColor),
                    ),
                  ),
                ],
              ),
              // نسبة الخصم
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      AppTranslations.translate(context, AppText.discountCart),
                      style: TextStyle(color: AppColor.themeBlackColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "% ${state.discountPercentage}",
                      style: TextStyle(color: AppColor.redColor),
                    ),
                  ),
                ],
              ),
              // سعر الشحن
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      AppTranslations.translate(context, AppText.shipping),
                      style: TextStyle(color: AppColor.themeBlackColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      state.subtotalPrice == 0
                          ? "0"
                          : state.lang == "ar"
                          ? "${state.shippingPrice} ر.س"
                          : "${state.shippingPrice} SAR",
                      style: TextStyle(color: AppColor.themeBlackColor),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Divider(),
              ),
              // السعر الإجمالي النهائي
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      AppTranslations.translate(context, AppText.totalPrice),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColor.themeBlackColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      state.subtotalPrice == 0
                          ? "0"
                          : state.lang == "ar"
                          ? "${state.totalAppPrice.toPriceFormat()} ر.س"
                          : "${state.totalAppPrice.toPriceFormat()} SAR",
                      style: TextStyle(
                        color: AppColor.redColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // زر إتمام الطلب
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          child: MaterialButton(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 100),
            color: AppColor.themeBlackColor,
            textColor: AppColor.bgColorOnBoarding,
            onPressed: onCheckout,
            child: Text(textButton, style: const TextStyle(fontSize: 20)),
          ),
        ),
      ],
    );
  }
}
