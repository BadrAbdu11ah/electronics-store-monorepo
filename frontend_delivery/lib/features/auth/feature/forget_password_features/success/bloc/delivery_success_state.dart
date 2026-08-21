part of 'delivery_success_bloc.dart';

@freezed
class DeliverySuccessState with _$DeliverySuccessState {
  const factory DeliverySuccessState.initial() = _Initial;
  const factory DeliverySuccessState.success() = _Success;
}
