part of 'order_details_bloc.dart';

@freezed
abstract class OrderDetailsEvent with _$OrderDetailsEvent {
  const factory OrderDetailsEvent.started({required OrderModel orderModel}) =
      _Started;
  const factory OrderDetailsEvent.loadOrderDetails({
    required OrderModel orderModel,
  }) = _LoadOrderDetails;
  const factory OrderDetailsEvent.getCurrentPositionApp() =
      _GetCurrentPositionApp;
}
