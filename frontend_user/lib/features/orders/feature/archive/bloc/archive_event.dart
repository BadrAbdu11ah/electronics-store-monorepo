part of 'archive_bloc.dart';

@freezed
abstract class ArchiveEvent with _$ArchiveEvent {
  const factory ArchiveEvent.fetchOrders() = _FetchOrders;
  const factory ArchiveEvent.rateOrder({
    required int orderId,
    required double rating,
    required String comment,
  }) = _RateOrder;
}
