import 'dart:async';

import 'package:frontend_admin/core/class/failure.dart';
import 'package:frontend_admin/core/services/notification_service.dart';
import 'package:frontend_admin/data/model/order/order_model.dart';
import 'package:frontend_admin/features/orders/data/orders_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pending_event.dart';
part 'pending_state.dart';
part 'pending_bloc.freezed.dart';

class PendingBloc extends Bloc<PendingEvent, PendingState> {
  final OrdersData ordersData;
  StreamSubscription<void>? _orderSubscription;

  PendingBloc(this.ordersData) : super(PendingState.initial()) {
    _orderSubscription = onOrders.listen((event) {
      if (!isClosed) {
        add(_FetchOrders());
      }
    });
    on<_FetchOrders>(_onFetchOrders);
    on<_ApproveOrder>(_onApproveOrder);
  }

  @override
  Future<void> close() {
    _orderSubscription?.cancel();
    return super.close();
  }

  Future<void> _onFetchOrders(
    _FetchOrders event,
    Emitter<PendingState> emit,
  ) async {
    emit(_Loading());

    var response = await ordersData.getPendingOrders();

    response.fold(
      (failure) {
        if (failure is EmptyDataFailure) {
          emit(_Empty(failure.message));
        } else {
          emit(_ServerFailure(failure.message));
        }
      },
      (orders) {
        emit(_Loaded(orders: orders, message: null));
      },
    );
  }

  Future<void> _onApproveOrder(
    _ApproveOrder event,
    Emitter<PendingState> emit,
  ) async {
    if (state is _Loaded) {
      final currentState = state as _Loaded;

      emit(_Loading());

      var response = await ordersData.approveOrder(event.orderId);

      response.fold((failure) => emit(_ServerFailure(failure.message)), (
        message,
      ) {
        final updatedOrders = currentState.orders
            .where((order) => order.id != event.orderId)
            .toList();

        emit(_Loaded(orders: updatedOrders, message: message));
      });
    }
  }
}
