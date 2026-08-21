part of 'archive_bloc.dart';

@freezed
abstract class ArchiveEvent with _$ArchiveEvent {
  const factory ArchiveEvent.fetchOrders() = _FetchOrders;
}
