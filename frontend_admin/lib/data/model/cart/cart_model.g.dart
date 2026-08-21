// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartModel _$CartModelFromJson(Map<String, dynamic> json) => _CartModel(
  id: (json['id'] as num?)?.toInt(),
  itemId: (json['item_id'] as num?)?.toInt(),
  countItems: (json['count_items'] as num?)?.toInt(),
  itemPrice: (json['item_price'] as num?)?.toDouble(),
  totalItemPrice: (json['total_item_price'] as num?)?.toDouble(),
  item: json['item'] == null
      ? null
      : ItemModel.fromJson(json['item'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CartModelToJson(_CartModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'item_id': instance.itemId,
      'count_items': instance.countItems,
      'item_price': instance.itemPrice,
      'total_item_price': instance.totalItemPrice,
      'item': instance.item,
    };

_CartResponseModel _$CartResponseModelFromJson(Map<String, dynamic> json) =>
    _CartResponseModel(
      status: json['status'] as String?,
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => CartModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      coupon: json['coupon'] == null
          ? null
          : CouponModel.fromJson(json['coupon'] as Map<String, dynamic>),
      subtotal: (json['subtotal'] as num?)?.toDouble(),
      discountAmount: (json['discount_amount'] as num?)?.toDouble(),
      shippingPrice: (json['shipping_price'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      totalQuantity: (json['total_quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CartResponseModelToJson(_CartResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'items': instance.items,
      'coupon': instance.coupon,
      'subtotal': instance.subtotal,
      'discount_amount': instance.discountAmount,
      'shipping_price': instance.shippingPrice,
      'total_price': instance.totalPrice,
      'total_quantity': instance.totalQuantity,
    };
