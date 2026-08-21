import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/features/orders/feature/pending/bloc/pending_bloc.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/orders/feature/pending/widgets/card_orders_pending.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrdersPending extends StatelessWidget {
  const OrdersPending({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.translate(context, AppText.ordersTitle)),
      ),
      body: BlocConsumer<PendingBloc, PendingState>(
        listenWhen: (previous, current) => current.maybeWhen(
          loaded: (_, message) => message != null,
          orElse: () => false,
        ),
        listener: (context, state) => state.whenOrNull(
          loaded: (_, message) {
            if (message != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: Colors.green),
              );
            }
            return;
          },
        ),
        builder: (context, state) => state.maybeWhen(
          initial: () => SizedBox.shrink(),
          loading: () => AppLoadingWidget(),
          serverFailure: (message) => AppErrorWidget(
            message: message,
            onRetry: () =>
                context.read<PendingBloc>().add(PendingEvent.fetchOrders()),
          ),
          empty: (message) => AppEmptyWidget(text: message),
          loaded: (orders, _) => Padding(
            padding: const EdgeInsets.all(10),
            child: ListView.builder(
              itemCount: orders.length,
              itemBuilder: (BuildContext context, int i) {
                final order = orders[i];
                return CardOrdersPending(
                  order: order,
                  onDetails: () {
                    Navigator.pushNamed(
                      context,
                      AppRoute.ordersDetails,
                      arguments: order,
                    );
                  },
                  onTracking: () => Navigator.pushNamed(
                    context,
                    AppRoute.ordersTracking,
                    arguments: order,
                  ),
                  onDelete: () => AppDialogs.dialogDelete(
                    context: context,
                    title: AppTranslations.translate(
                      context,
                      AppText.deleteOrder,
                    ),
                    content: AppTranslations.translate(
                      context,
                      AppText.areYouSureYouWantToDeleteThisOrder,
                    ),
                    onConfirm: () {
                      context.read<PendingBloc>().add(
                        PendingEvent.deleteOrder(orderId: order.id!),
                      );
                      Navigator.pop(context);
                    },
                  ),
                );
              },
            ),
          ),

          orElse: () => SizedBox.shrink(),
        ),
      ),
    );
  }
}
