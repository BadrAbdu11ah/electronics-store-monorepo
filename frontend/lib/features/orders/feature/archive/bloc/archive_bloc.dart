import 'dart:async';

import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/notification_service.dart'
    as NotificationService;
import 'package:electronics_store/data/model/order/order_model.dart';
import 'package:electronics_store/features/orders/data/orders_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'archive_event.dart';
part 'archive_state.dart';
part 'archive_bloc.freezed.dart';

class ArchiveBloc extends Bloc<ArchiveEvent, ArchiveState> {
  final OrdersData ordersData;
  StreamSubscription<void>? _orderSubscription;

  ArchiveBloc(this.ordersData) : super(ArchiveState()) {
    _orderSubscription = NotificationService.onOrders.listen((event) {
      if (!isClosed) {
        add(_FetchOrders());
      }
    });
    on<_FetchOrders>(_onFetchOrders);
    on<_RateOrder>(_onRateOrder);
  }

  @override
  Future<void> close() {
    _orderSubscription?.cancel();
    return super.close();
  }

  Future<void> _onFetchOrders(
    _FetchOrders event,
    Emitter<ArchiveState> emit,
  ) async {
    emit(
      state.copyWith(
        status: ArchiveStatus.loading(),
        rateStatus: RateStatus.initial(),
      ),
    );

    var response = await ordersData.getArchiveOrders();

    response.fold(
      (failure) {
        if (failure is EmptyDataFailure) {
          emit(state.copyWith(status: ArchiveStatus.empty(failure.message)));
        } else {
          emit(
            state.copyWith(
              status: ArchiveStatus.serverFailure(failure.message),
            ),
          );
        }
      },
      (orders) {
        emit(state.copyWith(status: ArchiveStatus.loaded(orders: orders)));
      },
    );
  }

  Future<void> _onRateOrder(
    _RateOrder event,
    Emitter<ArchiveState> emit,
  ) async {
    emit(state.copyWith(rateStatus: RateStatus.loading()));

    var response = await ordersData.rateOrder(
      event.orderId,
      event.rating,
      event.comment,
    );

    response.fold(
      (failure) {
        if (failure is EmptyDataFailure) {
          emit(state.copyWith(rateStatus: RateStatus.failure(failure.message)));
        } else {
          emit(state.copyWith(rateStatus: RateStatus.failure(failure.message)));
        }
      },
      (message) {
        emit(state.copyWith(rateStatus: RateStatus.success(message)));
      },
    );
  }
}
