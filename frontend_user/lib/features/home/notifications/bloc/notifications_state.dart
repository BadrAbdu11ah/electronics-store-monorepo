part of 'notifications_bloc.dart';

@freezed
abstract class NotificationsState with _$NotificationsState {
  const factory NotificationsState.initial() = _Initial;

  const factory NotificationsState.loading() = _Loading;

  const factory NotificationsState.loaded({
    @Default([]) List<NotificationModel> notifications,
  }) = _Loaded;

  const factory NotificationsState.empty(String message) = _Empty;

  const factory NotificationsState.serverFailure(String message) =
      _ServerFailure;
}
