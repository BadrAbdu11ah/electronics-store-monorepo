part of 'order_screen_bloc.dart';

@freezed
abstract class OrderScreenEvent with _$OrderScreenEvent {
  const factory OrderScreenEvent.started() = _Started;
  const factory OrderScreenEvent.pageChanged(int page) = _PageChanged;
}
