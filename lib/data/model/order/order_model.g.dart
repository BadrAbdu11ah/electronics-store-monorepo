// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => _OrderModel(
  id: (json['id'] as num?)?.toInt(),
  userId: (json['user_id'] as num?)?.toInt(),
  addressId: (json['address_id'] as num?)?.toInt(),
  type: (json['type'] as num?)?.toInt(),
  deliveryPrice: (json['delivery_price'] as num?)?.toDouble(),
  price: (json['price'] as num?)?.toDouble(),
  totalPrice: (json['total_price'] as num?)?.toDouble(),
  couponId: (json['coupon_id'] as num?)?.toInt(),
  couponDiscount: (json['coupon_discount'] as num?)?.toInt(),
  paymentMethod: (json['payment_method'] as num?)?.toInt(),
  status: (json['status'] as num?)?.toInt(),
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  couponModel: json['coupon'] == null
      ? null
      : CouponModel.fromJson(json['coupon'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OrderModelToJson(_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'address_id': instance.addressId,
      'type': instance.type,
      'delivery_price': instance.deliveryPrice,
      'price': instance.price,
      'total_price': instance.totalPrice,
      'coupon_id': instance.couponId,
      'coupon_discount': instance.couponDiscount,
      'payment_method': instance.paymentMethod,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'coupon': instance.couponModel,
    };
