part of 'pending_bloc.dart';

@freezed
abstract class PendingEvent with _$PendingEvent {
  const factory PendingEvent.fetchOrders() = _FetchOrders;
  const factory PendingEvent.deleteOrder({required int orderId}) = _DeleteOrder;
}
