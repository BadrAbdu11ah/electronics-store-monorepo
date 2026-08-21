part of 'admin_forget_password_bloc.dart';

@freezed
class AdminForgetPasswordEvent with _$AdminForgetPasswordEvent {
  const factory AdminForgetPasswordEvent.checkEmail(String email) = _CheckEmail;
  const factory AdminForgetPasswordEvent.resetPage() = _ResetPage;
}
