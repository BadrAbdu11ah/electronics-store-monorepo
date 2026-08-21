import 'dart:async';

import 'package:frontend_admin/core/class/failure.dart';
import 'package:frontend_admin/core/services/notification_service.dart';

import 'package:frontend_admin/data/model/order/order_model.dart';
import 'package:frontend_admin/features/orders/data/orders_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'accepte_event.dart';
part 'accepte_state.dart';
part 'accepte_bloc.freezed.dart';

class AccepteBloc extends Bloc<AccepteEvent, AccepteState> {
  final OrdersData ordersData;
  final List<StreamSubscription> _subscriptions = [];

  AccepteBloc(this.ordersData) : super(AccepteState.initial()) {
    _subscriptions.add(
      onOrders.listen((event) {
        if (!isClosed) {
          add(_FetchOrders());
        }
      }),
    );
    _subscriptions.add(
      ordersData.onApproveOrder.listen((event) {
        if (!isClosed) {
          add(_FetchOrders());
        }
      }),
    );
    on<_FetchOrders>(_onFetchOrders);
    on<_ApproveDelivery>(_onApproveDelivery);
  }

  @override
  Future<void> close() {
    for (var subscription in _subscriptions) {
      subscription.cancel();
    }
    return super.close();
  }

  Future<void> _onFetchOrders(
    _FetchOrders event,
    Emitter<AccepteState> emit,
  ) async {
    emit(_Loading());

    var response = await ordersData.getAcceptedOrders();

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

  Future<void> _onApproveDelivery(
    _ApproveDelivery event,
    Emitter<AccepteState> emit,
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
