import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/features/cart/bloc/cart_bloc.dart';
import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/cart/components/botton_cart.dart';
import 'package:electronics_store/features/cart/function/cart_bloc_helper.dart';
import 'package:flutter/material.dart';

class CustomBottomCart extends StatelessWidget {
  final CartState state;
  final void Function() onOrder;

  const CustomBottomCart({
    super.key,
    required this.state,
    required this.onOrder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
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
        BottonCart(
          title: AppTranslations.translate(context, AppText.order),
          onButton: onOrder,
        ),
      ],
    );
  }
}
