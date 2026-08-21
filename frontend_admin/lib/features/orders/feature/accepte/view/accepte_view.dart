import 'package:frontend_admin/app_translations.dart';
import 'package:frontend_admin/core/constant/app_route.dart';
import 'package:frontend_admin/core/shared/handling_data_view.dart';
import 'package:frontend_admin/features/orders/feature/accepte/bloc/accepte_bloc.dart';
import 'package:frontend_admin/features/orders/feature/accepte/widgets/card_orders_accepte.dart';
import 'package:frontend_admin/data/static/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccepteView extends StatelessWidget {
  const AccepteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.translate(context, AppText.ordersTitle)),
      ),
      body: BlocConsumer<AccepteBloc, AccepteState>(
        listenWhen: (previous, current) =>
            current.maybeWhen(
              loaded: (_, message) {
                if (message != null) {
                  return true;
                }
                return false;
              },
              orElse: () => false,
            ) ||
            previous.maybeWhen(
              loaded: (_, message) {
                if (message != null) {
                  return true;
                }
                return false;
              },
              orElse: () => false,
            ),
        listener: (context, state) {
          state.whenOrNull(
            loaded: (_, message) {
              if (message != null) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(message)));
              }
            },
          );
        },
        builder: (context, state) => state.maybeWhen(
          initial: () => SizedBox.shrink(),
          loading: () => AppLoadingWidget(),
          serverFailure: (message) => AppErrorWidget(
            message: message,
            onRetry: () =>
                context.read<AccepteBloc>().add(AccepteEvent.fetchOrders()),
          ),
          empty: (message) => AppEmptyWidget(text: message),
          loaded: (orders, _) => Padding(
            padding: const EdgeInsets.all(10),
            child: ListView.builder(
              itemCount: orders.length,
              itemBuilder: (BuildContext context, int i) {
                final order = orders[i];
                return CardOrdersAccepte(
                  order: order,
                  onDetails: () {
                    Navigator.pushNamed(
                      context,
                      AppRoute.ordersDetails,
                      arguments: order,
                    );
                  },
                  onApprove: () {
                    context.read<AccepteBloc>().add(
                      AccepteEvent.approveDelivery(order.id!),
                    );
                  },
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
