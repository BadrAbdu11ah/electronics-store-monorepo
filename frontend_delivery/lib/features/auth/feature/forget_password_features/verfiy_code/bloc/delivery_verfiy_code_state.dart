part of 'delivery_verfiy_code_bloc.dart';

@freezed
class DeliveryVerfiyCodeState with _$DeliveryVerfiyCodeState {
  const factory DeliveryVerfiyCodeState.initial() = _Initial;
  const factory DeliveryVerfiyCodeState.loading() = _Loading;
  const factory DeliveryVerfiyCodeState.success() = _Success;
  const factory DeliveryVerfiyCodeState.serverFailure(String errorMessage) =
      _ServerFailure;
  const factory DeliveryVerfiyCodeState.failure(String errorKey) = _Failure;
}
