part of 'check_out_bloc.dart';

@freezed
class CheckOutStatus with _$CheckOutStatus {
  const factory CheckOutStatus.initial() = _Initial;
  const factory CheckOutStatus.loading() = _Loading;
  const factory CheckOutStatus.loaded() = _Loaded;
  const factory CheckOutStatus.success(String message) = _Success;
  const factory CheckOutStatus.serverFailure(String message) = _ServerFailure;
  const factory CheckOutStatus.failure(String message) = _Failure;
  const factory CheckOutStatus.couponeFailure(String message) = _CouponeFailure;
}

@freezed
class AddressStatus with _$AddressStatus {
  const factory AddressStatus.initial() = _AddressInitial;
  const factory AddressStatus.loading() = _AddressLoading;
  const factory AddressStatus.loaded() = _AddressLoaded;
  const factory AddressStatus.noData(String message) = _AddressNoData;
}

@freezed
abstract class CheckOutState with _$CheckOutState {
  const factory CheckOutState({
    @Default(CheckOutStatus.initial()) CheckOutStatus status,
    @Default(AddressStatus.initial()) AddressStatus addressStatus,
    String? paymentMethod,
    String? deliveryType,
    String? addressID,
    @Default([]) List<AddressModel> addresses,
  }) = _CheckOutState;
}
