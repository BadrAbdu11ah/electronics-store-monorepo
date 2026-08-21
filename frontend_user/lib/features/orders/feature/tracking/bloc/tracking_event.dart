part of 'tracking_bloc.dart';

@freezed
abstract class TrackingEvent with _$TrackingEvent {
  const factory TrackingEvent.started({required OrderModel order}) =
      _TrackingStarted;
  const factory TrackingEvent.getCurrentLocation() = _GetCurrentLocation;
  const factory TrackingEvent.locationDelivery() = _LocationDelivery;
}
