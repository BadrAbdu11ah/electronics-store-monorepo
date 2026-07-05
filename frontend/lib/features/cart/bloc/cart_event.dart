part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.started() = _Started;
  const factory CartEvent.loadCart() = _LoadCart;
  const factory CartEvent.updateQuantity({
    required int itemId,
    required int delta,
  }) = _UpdateQuantity;
  const factory CartEvent.applyCoupon({required String couponName}) =
      _ApplyCoupon;
  const factory CartEvent.deleteItem({required int itemId}) = _DeleteItem;
}
