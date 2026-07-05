import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/cart/bloc/cart_bloc.dart';
import 'package:electronics_store/features/cart/widgets/cart.dart';
import 'package:electronics_store/features/cart/components/custom_bottom_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.translate(context, AppText.cartPageTitle)),
      ),
      bottomNavigationBar: BlocBuilder<CartBloc, CartState>(
        buildWhen: (previous, current) =>
            previous.status != current.status ||
            previous.totalAppPrice != current.totalAppPrice,
        builder: (context, state) {
          return state.status.maybeWhen(
            loading: () => const SizedBox.shrink(),
            serverFailure: (_) => const SizedBox.shrink(),
            noData: (_) => const SizedBox.shrink(),
            orElse: () => CustomBottomCart(
              state: state,
              onCoupon: (enteredCouponName) {
                context.read<CartBloc>().add(
                  CartEvent.applyCoupon(couponName: enteredCouponName),
                );
              },
              onOrder: () {
                if (state.cartItems.isEmpty) return;
                Navigator.pushNamed(
                  context,
                  AppRoute.checkOut,
                  arguments: {
                    'couponsid': state.couponId ?? "0",
                    'priceorders': state.subtotalPrice.toString(),
                  },
                );
              },
            ),
          );
        },
      ),
      body: BlocConsumer<CartBloc, CartState>(
        listener: (context, state) {
          state.couponStatus.whenOrNull(
            couponSuccess: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: Colors.green),
              );
            },
            couponFailure: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: Colors.red),
              );
            },
          );
        },
        builder: (context, state) {
          return state.status.maybeWhen(
            loading: () => const AppLoadingWidget(),
            noData: (message) => AppEmptyWidget(text: message),
            serverFailure: (message) => AppErrorWidget(
              message: message,
              onRetry: () => context.read<CartBloc>().add(CartEvent.loadCart()),
            ),
            loaded: () => Cart(state: state),
            orElse: () => SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
