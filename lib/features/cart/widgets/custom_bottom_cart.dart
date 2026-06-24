import 'package:electronics_store/features/cart/controller/cart_page_controller.dart';
import 'package:electronics_store/core/class/handling_data_view.dart';
import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/cart/widgets/botton_cart.dart';
import 'package:electronics_store/features/cart/widgets/botton_coupon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomCart extends GetView<CartPageControllerImp> {
  final String price;
  final String discount;
  final String shipping;
  final String totalPrice;
  final TextEditingController couponController;
  final void Function() onCoupon;
  final void Function() onOrder;
  const CustomBottomCart({
    super.key,
    required this.price,
    required this.discount,
    required this.totalPrice,
    required this.couponController,
    required this.onCoupon,
    required this.onOrder,
    required this.shipping,
  });

  @override
  Widget build(BuildContext context) {
    return HandlingDataView(
      state: controller.stateRequest,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          controller.discount == 0
              ? Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: TextFormField(
                          controller: couponController,
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 8,
                            ),
                            border: OutlineInputBorder(),
                            hintText: AppText.couponCode.tr,
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        flex: 1,
                        child: BottonCoupon(
                          title: AppText.apply.tr,
                          onButton: onCoupon,
                        ),
                      ),
                    ],
                  ),
                )
              : Text(
                  "${AppText.usedCoupon.tr} ${controller.couponsName}",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(10),
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
                        AppText.price.tr,
                        style: TextStyle(color: AppColor.themeBlackColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        price,
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
                        AppText.discountCart.tr,
                        style: TextStyle(color: AppColor.themeBlackColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        discount,
                        style: TextStyle(color: AppColor.priceColor),
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
                        AppText.shipping.tr,
                        style: TextStyle(color: AppColor.themeBlackColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        shipping,
                        style: TextStyle(color: AppColor.themeBlackColor),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        AppText.totalPrice.tr,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.themeBlackColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        totalPrice,
                        style: TextStyle(color: AppColor.priceColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          BottonCart(title: AppText.order.tr, onButton: onOrder),
        ],
      ),
    );
  }
}
