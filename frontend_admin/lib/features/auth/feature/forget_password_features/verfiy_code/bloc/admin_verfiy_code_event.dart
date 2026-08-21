part of 'admin_verfiy_code_bloc.dart';

@freezed
class AdminVerfiyCodeEvent with _$AdminVerfiyCodeEvent {
  const factory AdminVerfiyCodeEvent.submitted({
    required String email,
    required String verificationCode,
  }) = _Submitted;

  const factory AdminVerfiyCodeEvent.reset() = _Reset;
}
