part of 'order_details_bloc.dart';

@freezed
abstract class OrderDetailsStatus with _$OrderDetailsStatus {
  const factory OrderDetailsStatus.initial() = _Initial;
  const factory OrderDetailsStatus.loading() = _Loading;
  const factory OrderDetailsStatus.loaded() = _Loaded;
  const factory OrderDetailsStatus.serverFailure(String message) =
      _ServerFailure;
}

@freezed
abstract class LocationStatus with _$LocationStatus {
  const factory LocationStatus.initial() = _LocationInitial;
  const factory LocationStatus.loading() = _LocationLoading;
  const factory LocationStatus.loaded() = _LocationLoaded;
  const factory LocationStatus.serverFailure(String message) =
      _LocationServerFailure;
}

@freezed
abstract class OrderDetailsState with _$OrderDetailsState {
  const factory OrderDetailsState({
    @Default(OrderDetailsStatus.initial()) OrderDetailsStatus status,
    @Default(LocationStatus.initial()) LocationStatus locationStatus,
    @Default([]) List<CartModel> cartItems,
    @Default(OrderModel()) OrderModel order,
    AddressModel? addressModel,
    Position? position,
    double? lat,
    double? long,
    @Default('en') String lang,
  }) = _OrderDetailsState;
}
