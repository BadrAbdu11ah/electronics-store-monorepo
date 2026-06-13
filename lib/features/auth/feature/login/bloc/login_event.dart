part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.submitted({
    required String email,
    required String password,
  }) = _Submitted;
  const factory LoginEvent.resendCode({required String email}) = _ResendCode;
  const factory LoginEvent.reset() = _Reset;
}
