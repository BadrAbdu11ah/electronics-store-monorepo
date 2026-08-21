import 'package:electronics_store_delivery/core/enums/order_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:electronics_store_delivery/data/model/coupon/coupon_model.dart';

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
  // 0 => pending => ينتظر موافقة الآدمن،
  // 1 => approved_by_admin => تم قبول الطلب من قبل الآدمن،
  // 2 => assigned_to_delivery => تم قبول الطلب من قبل المندوب،
  // 3 => on_the_way => على الطريق
  // 4 => received => تم الاستلام
  // 5 => cancelled_by_admin => تم الالغاء من قبل الآدمن،

  OrderStatus get orderStatusEnum {
    switch (status) {
      case 1:
        return OrderStatus.pending;
      case 2:
        return OrderStatus.approve;
      case 3:
        return OrderStatus.prepare;
      case 4:
        return OrderStatus.delivered;
      case 5:
        return OrderStatus.cancelled;
      default:
        return OrderStatus.pending;
    }
  }

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory OrderModel({
    int? id,
    int? userId,
    int? addressId,
    String? addressName,
    String? addressCity,
    String? addressStreet,
    double? addressLat,
    double? addressLong,
    int? type, // 0 => Delivery, 1 => Drive Thru
    double? deliveryPrice,
    double? price,
    double? discountAmount,
    int? discountRate,
    double? totalPrice,
    int? couponId,
    String? couponName,
    int? paymentMethod, // 0 => Cash, 1 => Card
    int? status,
    int? deliveryId,
    double? rating,
    String? review,
    String? createdAt,
    String? updatedAt,
    @JsonKey(name: 'coupon') CouponModel? couponModel,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
