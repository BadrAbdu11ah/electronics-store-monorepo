import 'package:electronics_store/data/model/order/order_model.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/orders/data/orders_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pending_event.dart';
part 'pending_state.dart';
part 'pending_bloc.freezed.dart';

class PendingBloc extends Bloc<PendingEvent, PendingState> {
  final OrdersData ordersData;
  PendingBloc(this.ordersData) : super(PendingState.initial()) {
    on<_FetchOrders>(_onFetchOrders);
  }

  Future<void> _onFetchOrders(
    _FetchOrders event,
    Emitter<PendingState> emit,
  ) async {
    emit(_Loading());

    var response = await ordersData.getPendingOrders();

    response.fold(
      (failure) {
        emit(_ServerFailure(failure.message));
      },
      (orders) {
        late String paymentMethod;
        late String deliveryType;
        late String orderStatus;
        for (var order in orders) {
          order.paymentMethod == 0
              ? paymentMethod = AppText.ordersPaymentCash
              : paymentMethod = AppText.paymentCards;
          order.deliveryPrice == 0
              ? deliveryType = AppText.ordersDelivery
              : deliveryType = AppText.ordersDriveThru;
          order.type == 0
              ? orderStatus = AppText.ordersWaiting
              : order.type == 1
              ? orderStatus = AppText.ordersPreparing
              : orderStatus = AppText.ordersArchived;
        }
        emit(
          _Loaded(
            orders: orders,
            paymentMethod: paymentMethod,
            deliveryType: deliveryType,
            orderStatus: orderStatus,
          ),
        );
      },
    );
  }
}
