import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/core/function/translate_database.dart';
import 'package:electronics_store/data/model/cart/cart_model.dart';
import 'package:electronics_store/data/model/order/order_model.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:flutter/material.dart';

class CardOrdersDetails extends StatelessWidget {
  final List<CartModel> cartItems;
  final OrderModel order;
  final String lang;
  const CardOrdersDetails({
    super.key,
    required this.cartItems,
    required this.order,
    required this.lang,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Table(
              children: [
                TableRow(
                  children: [
                    Text(
                      AppTranslations.translate(context, AppText.item),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColor.themeBlackColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      AppTranslations.translate(context, AppText.qty),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColor.themeBlackColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      AppTranslations.translate(context, AppText.price),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColor.themeBlackColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                ...List.generate(cartItems.length, (i) {
                  return TableRow(
                    children: [
                      Text(
                        translateDatabase(
                          cartItems[i].item!.name!,
                          cartItems[i].item!.nameAr!,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "${cartItems[i].countItems}",
                        textAlign: TextAlign.center,
                      ),
                      lang == 'ar'
                          ? Text(
                              "${cartItems[i].totalItemPrice} ر.س",
                              textAlign: TextAlign.center,
                            )
                          : Text(
                              "${cartItems[i].totalItemPrice} SAR",
                              textAlign: TextAlign.center,
                            ),
                    ],
                  );
                }),
              ],
            ),
            Divider(),
            lang == 'ar'
                ? Text(
                    "${AppTranslations.translate(context, AppText.orderPrice)}: ${order.price} ر.س",
                  )
                : Text(
                    "${AppTranslations.translate(context, AppText.orderPrice)}: ${order.price} SAR",
                  ),
            lang == 'ar'
                ? Text(
                    "${AppTranslations.translate(context, AppText.deliveryPrice)}: "
                    "${order.deliveryPrice} ر.س",
                  )
                : Text(
                    "${AppTranslations.translate(context, AppText.deliveryPrice)}: "
                    "${order.deliveryPrice} SAR",
                  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${AppTranslations.translate(context, AppText.coupon)}:"),
                SizedBox(width: 4),
                order.couponId != null && order.discountRate != 0
                    ? lang == 'ar'
                          ? Text(
                              "- ${order.discountRate} %",
                              style: TextStyle(color: AppColor.redColor),
                            )
                          : Text(
                              "${order.discountRate} % -",
                              style: TextStyle(color: AppColor.redColor),
                            )
                    : Text(
                        " ${AppTranslations.translate(context, AppText.noCoupon)}",
                      ),
              ],
            ),

            Divider(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${AppTranslations.translate(context, AppText.totalPrice)}: ",
                    style: TextStyle(
                      color: AppColor.themeBlackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  lang == 'ar'
                      ? Text(
                          "${order.totalPrice} ر.س",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: AppColor.redColor),
                        )
                      : Text(
                          "${order.totalPrice} SAR",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: AppColor.redColor),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
