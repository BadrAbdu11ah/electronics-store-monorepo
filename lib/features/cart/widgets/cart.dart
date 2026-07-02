import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/features/cart/bloc/cart_bloc.dart';
import 'package:electronics_store/core/function/translate_database.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/cart/components/custom_card_cart.dart';
import 'package:electronics_store/features/cart/components/top_count_item_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Cart extends StatelessWidget {
  final CartState state;
  const Cart({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 10),
      itemCount: state.cartItems.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return TopCountItemCart(
            message: AppTranslations.translate(
              context,
              AppText.cartItemsCount,
            ).replaceAll("@count", state.totalQuantity.toString()),
          );
        }

        final cartItem = state.cartItems[index - 1];

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
            Navigator.pushNamed(
              context,
              AppRoute.itemsDetails,
              arguments: {"itemsmodel": cartItem.item},
            );
          },
        );
      },
    );
  }
}
