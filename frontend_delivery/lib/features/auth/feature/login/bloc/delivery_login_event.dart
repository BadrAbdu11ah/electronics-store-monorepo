part of 'delivery_login_bloc.dart';

@freezed
class DeliveryLoginEvent with _$DeliveryLoginEvent {
  const factory DeliveryLoginEvent.submitted({
    required String email,
    required String password,
  }) = _Submitted;
  const factory DeliveryLoginEvent.reset() = _Reset;
}
