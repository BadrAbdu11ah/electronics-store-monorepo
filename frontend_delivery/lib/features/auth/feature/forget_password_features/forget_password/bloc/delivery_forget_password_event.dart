part of 'delivery_forget_password_bloc.dart';

@freezed
class DeliveryForgetPasswordEvent with _$DeliveryForgetPasswordEvent {
  const factory DeliveryForgetPasswordEvent.checkEmail(String email) =
      _CheckEmail;
  const factory DeliveryForgetPasswordEvent.resetPage() = _ResetPage;
}
