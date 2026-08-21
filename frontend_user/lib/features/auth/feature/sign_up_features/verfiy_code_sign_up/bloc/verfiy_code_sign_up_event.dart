part of 'verfiy_code_sign_up_bloc.dart';

@freezed
class VerfiyCodeSignUpEvent with _$VerfiyCodeSignUpEvent {
  const factory VerfiyCodeSignUpEvent.submitted({
    required String email,
    required String verificationCode,
  }) = _Submitted;

  const factory VerfiyCodeSignUpEvent.reset() = _Reset;
}
