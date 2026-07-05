part of 'verfiy_code_password_bloc.dart';

@freezed
class VerfiyCodePasswordEvent with _$VerfiyCodePasswordEvent {
  const factory VerfiyCodePasswordEvent.submitted({
    required String email,
    required String verificationCode,
  }) = _Submitted;

  const factory VerfiyCodePasswordEvent.reset() = _Reset;
}
