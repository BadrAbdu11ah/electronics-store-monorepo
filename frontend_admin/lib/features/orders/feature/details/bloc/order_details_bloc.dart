import 'package:frontend_admin/core/services/app_service.dart';
import 'package:frontend_admin/data/model/order/order_model.dart';
import 'package:frontend_admin/data/model/order_details/order_details_model.dart';
import 'package:frontend_admin/features/orders/data/orders_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_details_event.dart';
part 'order_details_state.dart';
part 'order_details_bloc.freezed.dart';

class OrderDetailsBloc extends Bloc<OrderDetailsEvent, OrderDetailsState> {
  final AppService appService;
  final OrdersData ordersData;
  OrderDetailsBloc({required this.appService, required this.ordersData})
    : super(OrderDetailsState.initial()) {
    on<_Started>(_onStarted);

    on<_LoadOrderDetails>(_onLoadOrderDetails);
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<OrderDetailsState> emit,
  ) async {
    add(_LoadOrderDetails(orderModel: event.orderModel));
  }

  Future<void> _onLoadOrderDetails(
    _LoadOrderDetails event,
    Emitter<OrderDetailsState> emit,
  ) async {
    final String lang = appService.sharedPreferences.getString("lang") ?? "en";
    emit(_Loading());
    var response = await ordersData.getOrderDetails(event.orderModel.id!);

    response.fold((failure) => emit(_ServerFailure(failure.message)), (
      orderDetailsModel,
    ) {
      emit(_Loaded(orderDetailsModel: orderDetailsModel, lang: lang));
    });
  }
}
