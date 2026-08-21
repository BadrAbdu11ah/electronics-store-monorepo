part of 'delivery_forget_password_bloc.dart';

@freezed
class DeliveryForgetPasswordState with _$DeliveryForgetPasswordState {
  const factory DeliveryForgetPasswordState.initial() = _Initial;
  const factory DeliveryForgetPasswordState.loading() = _Loading;
  const factory DeliveryForgetPasswordState.success() = _Success;
  const factory DeliveryForgetPasswordState.failure(String errorKey) = _Failure;
  const factory DeliveryForgetPasswordState.serverFailure(String errorMessage) =
      _ServerFailure;
}
