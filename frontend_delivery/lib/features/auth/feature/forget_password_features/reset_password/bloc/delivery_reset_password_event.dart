part of 'delivery_reset_password_bloc.dart';

@freezed
class DeliveryResetPasswordEvent with _$DeliveryResetPasswordEvent {
  const factory DeliveryResetPasswordEvent.resetPassword({
    required String email,
    required String password,
  }) = _ResetPassword;
  const factory DeliveryResetPasswordEvent.resetPage() = _ResetPage;
  const factory DeliveryResetPasswordEvent.thePasswordDoesNotMatch() =
      _ThePasswordDoesNotMatch;
}
