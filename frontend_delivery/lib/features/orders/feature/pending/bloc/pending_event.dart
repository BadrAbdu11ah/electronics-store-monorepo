part of 'pending_bloc.dart';

@freezed
abstract class PendingEvent with _$PendingEvent {
  const factory PendingEvent.fetchOrders() = _FetchOrders;
  const factory PendingEvent.approveOrder({required int orderId}) =
      _ApproveOrder;
}
