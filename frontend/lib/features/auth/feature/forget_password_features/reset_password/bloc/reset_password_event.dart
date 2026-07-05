part of 'reset_password_bloc.dart';

@freezed
class ResetPasswordEvent with _$ResetPasswordEvent {
  const factory ResetPasswordEvent.resetPassword({
    required String email,
    required String password,
  }) = _ResetPassword;
  const factory ResetPasswordEvent.resetPage() = _ResetPage;
  const factory ResetPasswordEvent.thePasswordDoesNotMatch() =
      _ThePasswordDoesNotMatch;
}
