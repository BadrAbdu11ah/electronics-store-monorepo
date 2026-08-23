import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/cart/bloc/cart_bloc.dart';
import 'package:electronics_store/features/cart/components/botton_coupon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCoupon extends StatelessWidget {
  final TextEditingController couponController;
  const CustomCoupon({super.key, required this.couponController});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              title: AppTranslations.translate(context, AppText.apply),
              onButton: () {
                if (couponController.text.trim().isNotEmpty) {
                  context.read<CartBloc>().add(
                    CartEvent.applyCoupon(
                      couponName: couponController.text.trim(),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
