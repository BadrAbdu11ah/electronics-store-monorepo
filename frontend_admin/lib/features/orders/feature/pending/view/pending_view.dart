import 'package:frontend_admin/app_translations.dart';
import 'package:frontend_admin/core/constant/app_route.dart';
import 'package:frontend_admin/core/shared/handling_data_view.dart';
import 'package:frontend_admin/features/orders/feature/pending/bloc/pending_bloc.dart';
import 'package:frontend_admin/data/static/app_text.dart';
import 'package:frontend_admin/features/orders/feature/pending/widgets/card_orders_pending.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PendingView extends StatelessWidget {
  const PendingView({super.key});

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
        builder: (context, state) => state.when(
          initial: () => SizedBox.shrink(),
          loading: () => AppLoadingWidget(),
          serverFailure: (message) => AppErrorWidget(
            message: message,
            onRetry: () =>
                context.read<PendingBloc>().add(PendingEvent.fetchOrders()),
          ),
          empty: (message) => AppEmptyWidget(
            text: message,
            icon: Icons.pending_actions_outlined,
            textButton: "تحميل الطلبات",
            iconButton: Icons.refresh,
            onTap: () =>
                context.read<PendingBloc>().add(PendingEvent.fetchOrders()),
          ),
          loaded: (orders, _) => Padding(
            padding: const EdgeInsets.all(10),
            child: RefreshIndicator(
              onRefresh: () async =>
                  context.read<PendingBloc>().add(PendingEvent.fetchOrders()),
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
                    onApprove: () => context.read<PendingBloc>().add(
                      PendingEvent.approveOrder(orderId: order.id!),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
