part of 'tracking_bloc.dart';

@freezed
abstract class TrackingStatus with _$TrackingStatus {
  const factory TrackingStatus.initial() = _Initial;
  const factory TrackingStatus.loading() = _Loading;
  const factory TrackingStatus.loaded() = _Loaded;
  const factory TrackingStatus.success(String message) = _Success;
  const factory TrackingStatus.serverFailure(String message) = _ServerFailure;
}

@freezed
abstract class TrackingState with _$TrackingState {
  const factory TrackingState({
    @Default(TrackingStatus.initial()) TrackingStatus status,
    OrderModel? order,
    Position? position,
  }) = _TrackingState;
}
