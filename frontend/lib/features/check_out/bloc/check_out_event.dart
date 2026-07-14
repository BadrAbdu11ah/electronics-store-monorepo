part of 'check_out_bloc.dart';

@freezed
abstract class CheckOutEvent with _$CheckOutEvent {
  const factory CheckOutEvent.started() = _Started;
  const factory CheckOutEvent.loadAddresses() = _LoadAddresses;
  const factory CheckOutEvent.choosePymentMethod(String val) =
      _ChoosePymentMethod;
  const factory CheckOutEvent.chooseDeliveryType(String val) =
      _ChooseDeliveryType;
  const factory CheckOutEvent.chooseShippingAddress(String val) =
      _ChooseShippingAddress;
  const factory CheckOutEvent.checkout({
    required String priceOrders,
    required String couponsID,
  }) = _Checkout;
  const factory CheckOutEvent.resetStatusToLoaded() = _ResetStatusToLoaded;
}
