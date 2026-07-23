import 'package:electronics_store/data/model/order/order_model.dart';
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
        emit(_Loaded(orders: orders));
      },
    );
  }
}
