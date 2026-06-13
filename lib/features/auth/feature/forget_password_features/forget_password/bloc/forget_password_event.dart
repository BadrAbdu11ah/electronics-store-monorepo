part of 'forget_password_bloc.dart';

@freezed
class ForgetPasswordEvent with _$ForgetPasswordEvent {
  const factory ForgetPasswordEvent.checkEmail(String email) = _CheckEmail;
  const factory ForgetPasswordEvent.resetPage() = _ResetPage;
}
