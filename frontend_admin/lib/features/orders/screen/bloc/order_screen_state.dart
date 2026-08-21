part of 'order_screen_bloc.dart';

@freezed
class OrderScreenStatus with _$OrderScreenStatus {
  const factory OrderScreenStatus.initial() = _Initial;
  const factory OrderScreenStatus.loading() = _Loading;
  const factory OrderScreenStatus.loaded() = _Loaded;
  const factory OrderScreenStatus.serverFailure(String message) =
      _ServerFailure;
}

@freezed
abstract class OrderScreenState with _$OrderScreenState {
  const factory OrderScreenState({
    @Default(OrderScreenStatus.initial()) OrderScreenStatus status,
    @Default(0) int currentPage,
    @Default("en") String lang,
  }) = _OrderScreenState;
}
