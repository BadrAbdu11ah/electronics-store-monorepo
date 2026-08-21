// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderDetailsModel {

 List<CartModel> get cartItems; OrderModel get orderInfo;
/// Create a copy of OrderDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailsModelCopyWith<OrderDetailsModel> get copyWith => _$OrderDetailsModelCopyWithImpl<OrderDetailsModel>(this as OrderDetailsModel, _$identity);

  /// Serializes this OrderDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailsModel&&const DeepCollectionEquality().equals(other.cartItems, cartItems)&&(identical(other.orderInfo, orderInfo) || other.orderInfo == orderInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(cartItems),orderInfo);

@override
String toString() {
  return 'OrderDetailsModel(cartItems: $cartItems, orderInfo: $orderInfo)';
}


}

/// @nodoc
abstract mixin class $OrderDetailsModelCopyWith<$Res>  {
  factory $OrderDetailsModelCopyWith(OrderDetailsModel value, $Res Function(OrderDetailsModel) _then) = _$OrderDetailsModelCopyWithImpl;
@useResult
$Res call({
 List<CartModel> cartItems, OrderModel orderInfo
});


$OrderModelCopyWith<$Res> get orderInfo;

}
/// @nodoc
class _$OrderDetailsModelCopyWithImpl<$Res>
    implements $OrderDetailsModelCopyWith<$Res> {
  _$OrderDetailsModelCopyWithImpl(this._self, this._then);

  final OrderDetailsModel _self;
  final $Res Function(OrderDetailsModel) _then;

/// Create a copy of OrderDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cartItems = null,Object? orderInfo = null,}) {
  return _then(_self.copyWith(
cartItems: null == cartItems ? _self.cartItems : cartItems // ignore: cast_nullable_to_non_nullable
as List<CartModel>,orderInfo: null == orderInfo ? _self.orderInfo : orderInfo // ignore: cast_nullable_to_non_nullable
as OrderModel,
  ));
}
/// Create a copy of OrderDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderModelCopyWith<$Res> get orderInfo {
  
  return $OrderModelCopyWith<$Res>(_self.orderInfo, (value) {
    return _then(_self.copyWith(orderInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderDetailsModel].
extension OrderDetailsModelPatterns on OrderDetailsModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDetailsModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderDetailsModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDetailsModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CartModel> cartItems,  OrderModel orderInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDetailsModel() when $default != null:
return $default(_that.cartItems,_that.orderInfo);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CartModel> cartItems,  OrderModel orderInfo)  $default,) {final _that = this;
switch (_that) {
case _OrderDetailsModel():
return $default(_that.cartItems,_that.orderInfo);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CartModel> cartItems,  OrderModel orderInfo)?  $default,) {final _that = this;
switch (_that) {
case _OrderDetailsModel() when $default != null:
return $default(_that.cartItems,_that.orderInfo);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _OrderDetailsModel extends OrderDetailsModel {
  const _OrderDetailsModel({required final  List<CartModel> cartItems, required this.orderInfo}): _cartItems = cartItems,super._();
  factory _OrderDetailsModel.fromJson(Map<String, dynamic> json) => _$OrderDetailsModelFromJson(json);

 final  List<CartModel> _cartItems;
@override List<CartModel> get cartItems {
  if (_cartItems is EqualUnmodifiableListView) return _cartItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cartItems);
}

@override final  OrderModel orderInfo;

/// Create a copy of OrderDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDetailsModelCopyWith<_OrderDetailsModel> get copyWith => __$OrderDetailsModelCopyWithImpl<_OrderDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDetailsModel&&const DeepCollectionEquality().equals(other._cartItems, _cartItems)&&(identical(other.orderInfo, orderInfo) || other.orderInfo == orderInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cartItems),orderInfo);

@override
String toString() {
  return 'OrderDetailsModel(cartItems: $cartItems, orderInfo: $orderInfo)';
}


}

/// @nodoc
abstract mixin class _$OrderDetailsModelCopyWith<$Res> implements $OrderDetailsModelCopyWith<$Res> {
  factory _$OrderDetailsModelCopyWith(_OrderDetailsModel value, $Res Function(_OrderDetailsModel) _then) = __$OrderDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 List<CartModel> cartItems, OrderModel orderInfo
});


@override $OrderModelCopyWith<$Res> get orderInfo;

}
/// @nodoc
class __$OrderDetailsModelCopyWithImpl<$Res>
    implements _$OrderDetailsModelCopyWith<$Res> {
  __$OrderDetailsModelCopyWithImpl(this._self, this._then);

  final _OrderDetailsModel _self;
  final $Res Function(_OrderDetailsModel) _then;

/// Create a copy of OrderDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cartItems = null,Object? orderInfo = null,}) {
  return _then(_OrderDetailsModel(
cartItems: null == cartItems ? _self._cartItems : cartItems // ignore: cast_nullable_to_non_nullable
as List<CartModel>,orderInfo: null == orderInfo ? _self.orderInfo : orderInfo // ignore: cast_nullable_to_non_nullable
as OrderModel,
  ));
}

/// Create a copy of OrderDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderModelCopyWith<$Res> get orderInfo {
  
  return $OrderModelCopyWith<$Res>(_self.orderInfo, (value) {
    return _then(_self.copyWith(orderInfo: value));
  });
}
}

// dart format on
