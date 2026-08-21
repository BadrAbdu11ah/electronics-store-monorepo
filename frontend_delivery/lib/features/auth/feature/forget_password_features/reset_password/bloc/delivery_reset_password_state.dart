part of 'delivery_reset_password_bloc.dart';

@freezed
class DeliveryResetPasswordState with _$DeliveryResetPasswordState {
  const factory DeliveryResetPasswordState.initial() = _Initial;
  const factory DeliveryResetPasswordState.loading() = _Loading;
  const factory DeliveryResetPasswordState.success() = _Success;
  const factory DeliveryResetPasswordState.serverFailure(String errorMessage) =
      _ServerFailure;
  const factory DeliveryResetPasswordState.failure(String errorKey) = _Failure;
}
