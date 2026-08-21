part of 'admin_login_bloc.dart';

@freezed
class AdminLoginEvent with _$AdminLoginEvent {
  const factory AdminLoginEvent.submitted({
    required String email,
    required String password,
  }) = _Submitted;
  const factory AdminLoginEvent.reset() = _Reset;
}
