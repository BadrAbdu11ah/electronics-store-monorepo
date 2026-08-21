part of 'delivery_verfiy_code_bloc.dart';

@freezed
class DeliveryVerfiyCodeEvent with _$DeliveryVerfiyCodeEvent {
  const factory DeliveryVerfiyCodeEvent.submitted({
    required String email,
    required String verificationCode,
  }) = _Submitted;

  const factory DeliveryVerfiyCodeEvent.reset() = _Reset;
}
