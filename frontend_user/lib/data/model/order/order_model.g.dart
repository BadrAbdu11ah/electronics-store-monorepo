// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => _OrderModel(
  id: (json['id'] as num?)?.toInt(),
  userId: (json['user_id'] as num?)?.toInt(),
  addressId: (json['address_id'] as num?)?.toInt(),
  addressName: json['address_name'] as String?,
  addressCity: json['address_city'] as String?,
  addressStreet: json['address_street'] as String?,
  addressLat: (json['address_lat'] as num?)?.toDouble(),
  addressLong: (json['address_long'] as num?)?.toDouble(),
  type: (json['type'] as num?)?.toInt(),
  deliveryPrice: (json['delivery_price'] as num?)?.toDouble(),
  price: (json['price'] as num?)?.toDouble(),
  discountAmount: (json['discount_amount'] as num?)?.toDouble(),
  discountRate: (json['discount_rate'] as num?)?.toInt(),
  totalPrice: (json['total_price'] as num?)?.toDouble(),
  couponId: (json['coupon_id'] as num?)?.toInt(),
  couponName: json['coupon_name'] as String?,
  paymentMethod: (json['payment_method'] as num?)?.toInt(),
  status: (json['status'] as num?)?.toInt(),
  deliveryId: (json['delivery_id'] as num?)?.toInt(),
  rating: (json['rating'] as num?)?.toDouble(),
  review: json['review'] as String?,
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$OrderModelToJson(_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'address_id': instance.addressId,
      'address_name': instance.addressName,
      'address_city': instance.addressCity,
      'address_street': instance.addressStreet,
      'address_lat': instance.addressLat,
      'address_long': instance.addressLong,
      'type': instance.type,
      'delivery_price': instance.deliveryPrice,
      'price': instance.price,
      'discount_amount': instance.discountAmount,
      'discount_rate': instance.discountRate,
      'total_price': instance.totalPrice,
      'coupon_id': instance.couponId,
      'coupon_name': instance.couponName,
      'payment_method': instance.paymentMethod,
      'status': instance.status,
      'delivery_id': instance.deliveryId,
      'rating': instance.rating,
      'review': instance.review,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
