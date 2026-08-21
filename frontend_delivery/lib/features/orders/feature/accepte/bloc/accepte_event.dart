part of 'accepte_bloc.dart';

@freezed
abstract class AccepteEvent with _$AccepteEvent {
  const factory AccepteEvent.fetchOrders() = _FetchOrders;
  const factory AccepteEvent.doneDelivery(int orderId) = _DoneDelivery;
}
