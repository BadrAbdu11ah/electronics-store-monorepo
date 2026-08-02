// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderDetailsModel _$OrderDetailsModelFromJson(Map<String, dynamic> json) =>
    _OrderDetailsModel(
      cartItems: (json['cart_items'] as List<dynamic>)
          .map((e) => CartModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      address: json['address'] == null
          ? null
          : AddressModel.fromJson(json['address'] as Map<String, dynamic>),
      orderInfo: OrderModel.fromJson(
        json['order_info'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$OrderDetailsModelToJson(_OrderDetailsModel instance) =>
    <String, dynamic>{
      'cart_items': instance.cartItems,
      'address': instance.address,
      'order_info': instance.orderInfo,
    };
