import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/features/orders/feature/details/bloc/order_details_bloc.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/orders/feature/details/widgets/details_view.dart';
import 'package:electronics_store/data/model/order/order_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderDetails extends StatelessWidget {
  final OrderModel orderModel;
  const OrderDetails({super.key, required this.orderModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTranslations.translate(context, AppText.orderDetailsTitle),
        ),
      ),
      body: BlocBuilder<OrderDetailsBloc, OrderDetailsState>(
        builder: (context, state) {
          return state.maybeWhen(
            initial: () => SizedBox.shrink(),
            loading: () => AppLoadingWidget(),
            serverFailure: (message) => AppErrorWidget(
              message: message,
              onRetry: () => context.read<OrderDetailsBloc>().add(
                OrderDetailsEvent.started(orderModel: orderModel),
              ),
            ),
            loaded: (orderDetailsModel, lang) => DetailsView(
              cartItems: orderDetailsModel.cartItems,
              order: orderDetailsModel.orderInfo,
              lang: lang,
            ),
            orElse: () => SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
