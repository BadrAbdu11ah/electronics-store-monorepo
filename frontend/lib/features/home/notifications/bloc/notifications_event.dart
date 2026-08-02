part of 'notifications_bloc.dart';

@freezed
abstract class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.started() = _Started;
}
