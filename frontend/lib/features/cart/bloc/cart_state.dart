part of 'cart_bloc.dart';

@freezed
class CartStatus with _$CartStatus {
  const factory CartStatus.initial() = _Initial;
  const factory CartStatus.loading() = _Loading;
  const factory CartStatus.loaded() = _Loaded;
  const factory CartStatus.noData(String message) = _NoData;
  const factory CartStatus.serverFailure(String message) = _ServerFailure;
}

@freezed
class CouponStatus with _$CouponStatus {
  const factory CouponStatus.initial() = _CouponInitial;
  const factory CouponStatus.couponSuccess(String message) = _CouponSuccess;
  const factory CouponStatus.couponFailure(String message) = _CouponFailure;
}

@freezed
abstract class CartState with _$CartState {
  const factory CartState({
    @Default(CartStatus.initial()) CartStatus status,
    @Default(CouponStatus.initial()) CouponStatus couponStatus,
    @Default([]) List<CartModel> cartItems,
    @Default([])
    List<int>
    updatingItemIds, // قائمة لحفظ الـ (آي دي) المغلقة أثناء التحديث منعاً للضغط المتكرر
    @Default(0.0)
    double subtotalPrice, // السعر الإجمالي بالريال قبل الشحن والخصم
    @Default(0.0)
    double totalAppPrice, // السعر النهائي بالريال بعد الخصم والشحن
    @Default(0) int discountPercentage, // نسبة خصم الكوبون
    @Default(20.0) double shippingPrice, // سعر الشحن الثابت بالريال
    @Default(0) int totalQuantity, // العدد الكلي لقطع السلة
    String? couponId,
    String? couponName,
    @Default("en") String lang,
  }) = _CartState;
}
