// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartModel _$CartModelFromJson(Map<String, dynamic> json) => _CartModel(
  item: json['item'] == null
      ? null
      : ItemModel.fromJson(json['item'] as Map<String, dynamic>),
  countItems: (json['count_items'] as num?)?.toInt(),
  itemPrice: (json['item_price'] as num?)?.toDouble(),
  totalItemPrice: (json['total_item_price'] as num?)?.toDouble(),
);

Map<String, dynamic> _$CartModelToJson(_CartModel instance) =>
    <String, dynamic>{
      'item': instance.item,
      'count_items': instance.countItems,
      'item_price': instance.itemPrice,
      'total_item_price': instance.totalItemPrice,
    };

_CartResponseModel _$CartResponseModelFromJson(Map<String, dynamic> json) =>
    _CartResponseModel(
      items: (json['data'] as List<dynamic>)
          .map((e) => CartModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPrice: (json['total_price'] as num).toDouble(),
      totalQuantity: (json['total_quantity'] as num).toInt(),
    );

Map<String, dynamic> _$CartResponseModelToJson(_CartResponseModel instance) =>
    <String, dynamic>{
      'data': instance.items,
      'total_price': instance.totalPrice,
      'total_quantity': instance.totalQuantity,
    };
