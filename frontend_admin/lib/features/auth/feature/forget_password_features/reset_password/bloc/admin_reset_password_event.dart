part of 'admin_reset_password_bloc.dart';

@freezed
class AdminResetPasswordEvent with _$AdminResetPasswordEvent {
  const factory AdminResetPasswordEvent.resetPassword({
    required String email,
    required String password,
  }) = _ResetPassword;
  const factory AdminResetPasswordEvent.resetPage() = _ResetPage;
  const factory AdminResetPasswordEvent.thePasswordDoesNotMatch() =
      _ThePasswordDoesNotMatch;
}
