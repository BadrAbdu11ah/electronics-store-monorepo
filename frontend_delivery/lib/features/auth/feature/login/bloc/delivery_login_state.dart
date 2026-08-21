part of 'delivery_login_bloc.dart';

@freezed
class DeliveryLoginState with _$DeliveryLoginState {
  const factory DeliveryLoginState.initial() = _Initial;
  const factory DeliveryLoginState.loading() = _Loading;
  const factory DeliveryLoginState.success() = _Success;
  const factory DeliveryLoginState.serverFailure(String errorMessage) =
      _ServerFailure;
  const factory DeliveryLoginState.failure(String errorMessage) = _Failure;
}
