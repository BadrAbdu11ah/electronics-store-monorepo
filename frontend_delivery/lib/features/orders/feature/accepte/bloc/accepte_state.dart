part of 'accepte_bloc.dart';

@freezed
abstract class AccepteState with _$AccepteState {
  const factory AccepteState.initial() = _Initial;
  const factory AccepteState.loading() = _Loading;
  const factory AccepteState.empty(String message) = _Empty;
  const factory AccepteState.loaded({
    @Default([]) List<OrderModel> orders,
    String? message,
  }) = _Loaded;
  const factory AccepteState.serverFailure(String message) = _ServerFailure;
}
