import 'package:frontend_admin/app_translations.dart';
import 'package:frontend_admin/core/constant/app_route.dart';
import 'package:frontend_admin/core/shared/handling_data_view.dart';
import 'package:frontend_admin/features/orders/feature/archive/bloc/archive_bloc.dart';
import 'package:frontend_admin/features/orders/feature/archive/widgets/card_orders_archive.dart';
import 'package:frontend_admin/data/static/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArchiveView extends StatelessWidget {
  const ArchiveView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.translate(context, AppText.ordersTitle)),
      ),
      body: BlocConsumer<ArchiveBloc, ArchiveState>(
        listenWhen: (previous, current) =>
            previous.rateStatus != current.rateStatus,
        listener: (context, state) {
          state.rateStatus.maybeWhen(
            success: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: Colors.green),
              );
              context.read<ArchiveBloc>().add(ArchiveEvent.fetchOrders());
            },
            failure: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: Colors.red),
              );
            },
            orElse: () => null,
          );
        },
        builder: (context, state) => state.status.maybeWhen(
          initial: () => SizedBox.shrink(),
          loading: () => AppLoadingWidget(),
          serverFailure: (message) => AppErrorWidget(
            message: message,
            onRetry: () =>
                context.read<ArchiveBloc>().add(ArchiveEvent.fetchOrders()),
          ),
          empty: (message) => AppEmptyWidget(text: message),
          loaded: (orders) => Padding(
            padding: const EdgeInsets.all(10),
            child: ListView.builder(
              itemCount: orders.length,
              itemBuilder: (BuildContext context, int i) {
                final order = orders[i];
                return CardOrdersArchive(
                  order: order,
                  onDetails: () {
                    Navigator.pushNamed(
                      context,
                      AppRoute.ordersDetails,
                      arguments: order,
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
