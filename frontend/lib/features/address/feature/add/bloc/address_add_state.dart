part of 'address_add_bloc.dart';

@freezed
class AddressAddStatus with _$AddressAddStatus {
  const factory AddressAddStatus.initial() = _Initial;
  const factory AddressAddStatus.loading() = _Loading;
  const factory AddressAddStatus.loaded() = _Loaded;
  const factory AddressAddStatus.serverFailure(String message) = _ServerFailure;
}

@freezed
abstract class AddressAddState with _$AddressAddState {
  const factory AddressAddState({
    @Default(AddressAddStatus.initial()) AddressAddStatus status,
    // Location Data
    Position? position,
    double? lat,
    double? long,
  }) = _AdderssAddState;
}
