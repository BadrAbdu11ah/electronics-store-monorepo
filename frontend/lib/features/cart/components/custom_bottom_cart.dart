import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/features/cart/bloc/cart_bloc.dart';
import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/cart/components/botton_cart.dart';
import 'package:electronics_store/features/cart/components/botton_coupon.dart';
import 'package:flutter/material.dart';

class CustomBottomCart extends StatefulWidget {
  final CartState state;
  final void Function(String couponName) onCoupon;
  final void Function() onOrder;

  const CustomBottomCart({
    super.key,
    required this.state,
    required this.onCoupon,
    required this.onOrder,
  });

  @override
  State<CustomBottomCart> createState() => _CustomBottomCartState();
}

class _CustomBottomCartState extends State<CustomBottomCart> {
  late TextEditingController couponController;

  @override
  void initState() {
    couponController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    couponController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        widget.state.discountPercentage == 0
            ? Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: TextFormField(
                        controller: couponController,
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 8,
                          ),
                          border: const OutlineInputBorder(),
                          hintText: AppTranslations.translate(
                            context,
                            AppText.couponCode,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      flex: 1,
                      child: BottonCoupon(
                        title: AppTranslations.translate(
                          context,
                          AppText.apply,
                        ),
                        onButton: () {
                          if (couponController.text.trim().isNotEmpty) {
                            // إرسال النص المكتوب صراحة إلى الـ View
                            widget.onCoupon(couponController.text.trim());
                          }
                        },
                      ),
                    ),
                  ],
                ),
              )
            : Text(
                "${AppTranslations.translate(context, AppText.usedCoupon)} ${widget.state.couponName}",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
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
                      "${widget.state.subtotalPrice} ر.س",
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
                      "% ${widget.state.discountPercentage}",
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
                      AppTranslations.translate(context, AppText.shipping),
                      style: TextStyle(color: AppColor.themeBlackColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "${widget.state.shippingPrice} ر.س",
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
                      "${widget.state.totalAppPrice} ر.س",
                      style: TextStyle(
                        color: AppColor.priceColor,
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
          onButton: widget.onOrder,
        ),
      ],
    );
  }
}
