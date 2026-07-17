part of 'pending_bloc.dart';

@freezed
abstract class PendingState with _$PendingState {
  const factory PendingState.initial() = _Initial;
  const factory PendingState.loading() = _Loading;
  const factory PendingState.loaded({
    @Default([]) List<OrderModel> orders,
    String? paymentMethod,
    String? deliveryType,
    String? orderStatus,
  }) = _Loaded;
  const factory PendingState.serverFailure(String message) = _ServerFailure;
}
