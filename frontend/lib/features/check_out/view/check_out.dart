import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/check_out/bloc/check_out_bloc.dart';
import 'package:electronics_store/features/check_out/components/bottom_checkout.dart';
import 'package:electronics_store/features/check_out/widgets/check_out_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckOut extends StatelessWidget {
  final String couponsID;
  final String priceOrders;
  const CheckOut({
    super.key,
    required this.couponsID,
    required this.priceOrders,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.translate(context, AppText.checkoutButton)),
      ),
      bottomNavigationBar: BottomCheckout(
        textButton: AppTranslations.translate(context, AppText.checkoutButton),
        onCheckout: () {
          context.read<CheckOutBloc>().add(
            CheckOutEvent.checkout(
              priceOrders: priceOrders,
              couponsID: couponsID,
            ),
          );
        },
      ),

      body: BlocConsumer<CheckOutBloc, CheckOutState>(
        listenWhen: (previous, current) {
          return current.status.maybeWhen(
            failure: (_) => true,
            couponeFailure: (_) => true,
            success: (_) => true,
            orElse: () => false,
          );
        },
        listener: (context, state) {
          state.status.whenOrNull(
            failure: (message) => {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: Colors.red),
              ),
              context.read<CheckOutBloc>().add(
                const CheckOutEvent.resetStatusToLoaded(),
              ),
            },
            couponeFailure: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: Colors.red),
              );
              Navigator.pushNamedAndRemoveUntil(
                context,
                AppRoute.cart,
                (route) => false,
              );
            },
            success: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: Colors.green),
              );
              Navigator.pushNamedAndRemoveUntil(
                context,
                AppRoute.homeScreen,
                (route) => false,
              );
            },
          );
        },
        builder: (context, state) {
          return state.status.maybeWhen(
            loading: () => AppLoadingWidget(),
            serverFailure: (message) => AppErrorWidget(
              message: message,
              onRetry: () =>
                  context.read<CheckOutBloc>().add(CheckOutEvent.started()),
            ),
            orElse: () => CheckOutView(state: state),
          );
        },
      ),
    );
  }
}
