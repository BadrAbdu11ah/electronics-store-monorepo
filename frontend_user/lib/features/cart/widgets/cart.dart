import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/features/cart/bloc/cart_bloc.dart';
import 'package:electronics_store/core/function/translate_database.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/cart/components/custom_card_cart.dart';
import 'package:electronics_store/features/cart/components/custom_coupon.dart';
import 'package:electronics_store/features/cart/components/top_count_item_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Cart extends StatefulWidget {
  final CartState state;

  const Cart({super.key, required this.state});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
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
      children: [
        ...List.generate(widget.state.cartItems.length + 1, (index) {
          if (index == 0) {
            return TopCountItemCart(
              message: AppTranslations.translate(
                context,
                AppText.cartItemsCount,
              ).replaceAll("@count", widget.state.totalQuantity.toString()),
            );
          }

          final cartItem = widget.state.cartItems[index - 1];

          return CustomCardCart(
            imageName: cartItem.item?.image ?? "",
            itemsName: translateDatabase(
              cartItem.item?.name ?? "",
              cartItem.item?.nameAr ?? "",
            ),
            price: cartItem.totalItemPrice ?? 0.0,
            count: cartItem.countItems ?? 0,
            onAdd: () {
              context.read<CartBloc>().add(
                CartEvent.updateQuantity(
                  itemId: cartItem.item?.id ?? 0,
                  delta: 1,
                ),
              );
            },
            onRemove: () {
              context.read<CartBloc>().add(
                CartEvent.updateQuantity(
                  itemId: cartItem.item?.id ?? 0,
                  delta: -1,
                ),
              );
            },
            onCard: () {
              if (cartItem.item == null) return;
              Navigator.pushReplacementNamed(
                context,
                AppRoute.itemsDetails,
                arguments: cartItem.item,
              );
            },
          );
        }),
        Spacer(),
        widget.state.couponStatus.maybeWhen(
          loading: () => AppLoadingWidget(),
          couponSuccess: (_) => Text(
            "${AppTranslations.translate(context, AppText.usedCoupon)} ${widget.state.couponName}",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          orElse: () => CustomCoupon(couponController: couponController),
        ),
      ],
    );
  }
}
