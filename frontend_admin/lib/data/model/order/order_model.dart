import 'package:frontend_admin/core/enums/order_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
        return OrderStatus.pending;
      case 1:
        return OrderStatus.rejected;
      case 2:
        return OrderStatus.accepted;
      case 3:
        return OrderStatus.prepare;
      case 4:
        return OrderStatus.delivered;
      case 5:
        return OrderStatus.done;
      case 6:
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
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
