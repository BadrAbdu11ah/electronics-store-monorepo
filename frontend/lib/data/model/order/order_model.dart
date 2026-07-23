import 'package:electronics_store/core/enums/order_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:electronics_store/data/model/coupon/coupon_model.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
abstract class OrderModel with _$OrderModel {
  const OrderModel._();

  PaymentMethod get paymentMethodEnum {
    switch (paymentMethod) {
      case 0:
        return PaymentMethod.cash;
      case 1:
        return PaymentMethod.card;
      default:
        return PaymentMethod.cash;
    }
  }

  DeliveryType get deliveryTypeEnum {
    switch (type) {
      case 0:
        return DeliveryType.delivery;
      case 1:
        return DeliveryType.driveThru;
      default:
        return DeliveryType.delivery;
    }
  }

  OrderStatus get orderStatusEnum {
    switch (status) {
      case 0:
        return OrderStatus.waiting;
      case 1:
        return OrderStatus.preparing;
      default:
        return OrderStatus.archived;
    }
  }

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory OrderModel({
    int? id,
    int? userId,
    int? addressId,
    int? type, // 0 => Delivery, 1 => Drive Thru
    double? deliveryPrice,
    double? price,
    double? totalPrice,
    int? couponId,
    int? couponDiscount,
    int? paymentMethod, // 0 => Cash, 1 => Card
    int? status, // حالة الطلب (مثال: 0 => قيد الانتظار)
    String? createdAt,
    String? updatedAt,
    @JsonKey(name: 'coupon') CouponModel? couponModel,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
