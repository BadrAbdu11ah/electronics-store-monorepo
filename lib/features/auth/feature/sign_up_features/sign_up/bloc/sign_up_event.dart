part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.submitted({
    required String username,
    required String email,
    required String password,
    required String phone,
  }) = _Submitted;
  const factory SignUpEvent.reset() = _Reset;
}
