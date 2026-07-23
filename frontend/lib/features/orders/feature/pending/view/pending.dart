import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/enums/order_enum.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/features/orders/feature/pending/bloc/pending_bloc.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/orders/feature/pending/widgets/card_orders_pending.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jiffy/jiffy.dart';

class OrdersPending extends StatelessWidget {
  const OrdersPending({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.translate(context, AppText.ordersTitle)),
      ),
      body: BlocBuilder<PendingBloc, PendingState>(
        builder: (context, state) => state.maybeWhen(
          initial: () => SizedBox.shrink(),
          loading: () => AppLoadingWidget(),
          serverFailure: (message) => AppErrorWidget(
            message: message,
            onRetry: () =>
                context.read<PendingBloc>().add(PendingEvent.fetchOrders()),
          ),
          loaded: (orders) => Padding(
            padding: const EdgeInsets.all(10),
            child: ListView.builder(
              itemCount: orders.length,
              itemBuilder: (BuildContext context, int i) {
                final order = orders[i];
                return CardOrdersPending(
                  orderid: "#${order.id}",
                  createdAt: Jiffy.parse(
                    order.createdAt!,
                    pattern: "yyyy-MM-dd",
                  ).fromNow(),
                  pymentMethod:
                      "${AppTranslations.translate(context, AppText.paymentMethod)} ${order.paymentMethodEnum.text(context)}",
                  orderType:
                      "${AppTranslations.translate(context, AppText.orderType)} ${order.deliveryTypeEnum.text(context)}",
                  orderStatus:
                      "${AppTranslations.translate(context, AppText.orderStatus)} ${order.orderStatusEnum.text(context)}",
                  totalPrice:
                      "${AppTranslations.translate(context, AppText.totalPrice)}: ",
                  ordersTotalPrice: "${order.totalPrice} \$",
                  onDetails: () {
                    Navigator.pushNamed(
                      context,
                      AppRoute.ordersDetails,
                      arguments: order,
                    );
                  },
                  details: AppTranslations.translate(context, AppText.details),
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
