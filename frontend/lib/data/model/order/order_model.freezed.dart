// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderModel {

 int? get id; int? get userId; int? get addressId; int? get type;// 0 => Delivery, 1 => Drive Thru
 double? get deliveryPrice; double? get price; double? get totalPrice; int? get couponId; int? get couponDiscount; int? get paymentMethod;// 0 => Cash, 1 => Card
 int? get status;// حالة الطلب (مثال: 0 => قيد الانتظار)
 String? get createdAt; String? get updatedAt;@JsonKey(name: 'coupon') CouponModel? get couponModel;
/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderModelCopyWith<OrderModel> get copyWith => _$OrderModelCopyWithImpl<OrderModel>(this as OrderModel, _$identity);

  /// Serializes this OrderModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.addressId, addressId) || other.addressId == addressId)&&(identical(other.type, type) || other.type == type)&&(identical(other.deliveryPrice, deliveryPrice) || other.deliveryPrice == deliveryPrice)&&(identical(other.price, price) || other.price == price)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.couponId, couponId) || other.couponId == couponId)&&(identical(other.couponDiscount, couponDiscount) || other.couponDiscount == couponDiscount)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.couponModel, couponModel) || other.couponModel == couponModel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,addressId,type,deliveryPrice,price,totalPrice,couponId,couponDiscount,paymentMethod,status,createdAt,updatedAt,couponModel);

@override
String toString() {
  return 'OrderModel(id: $id, userId: $userId, addressId: $addressId, type: $type, deliveryPrice: $deliveryPrice, price: $price, totalPrice: $totalPrice, couponId: $couponId, couponDiscount: $couponDiscount, paymentMethod: $paymentMethod, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, couponModel: $couponModel)';
}


}

/// @nodoc
abstract mixin class $OrderModelCopyWith<$Res>  {
  factory $OrderModelCopyWith(OrderModel value, $Res Function(OrderModel) _then) = _$OrderModelCopyWithImpl;
@useResult
$Res call({
 int? id, int? userId, int? addressId, int? type, double? deliveryPrice, double? price, double? totalPrice, int? couponId, int? couponDiscount, int? paymentMethod, int? status, String? createdAt, String? updatedAt,@JsonKey(name: 'coupon') CouponModel? couponModel
});


$CouponModelCopyWith<$Res>? get couponModel;

}
/// @nodoc
class _$OrderModelCopyWithImpl<$Res>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._self, this._then);

  final OrderModel _self;
  final $Res Function(OrderModel) _then;

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = freezed,Object? addressId = freezed,Object? type = freezed,Object? deliveryPrice = freezed,Object? price = freezed,Object? totalPrice = freezed,Object? couponId = freezed,Object? couponDiscount = freezed,Object? paymentMethod = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? couponModel = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,addressId: freezed == addressId ? _self.addressId : addressId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int?,deliveryPrice: freezed == deliveryPrice ? _self.deliveryPrice : deliveryPrice // ignore: cast_nullable_to_non_nullable
as double?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,totalPrice: freezed == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double?,couponId: freezed == couponId ? _self.couponId : couponId // ignore: cast_nullable_to_non_nullable
as int?,couponDiscount: freezed == couponDiscount ? _self.couponDiscount : couponDiscount // ignore: cast_nullable_to_non_nullable
as int?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,couponModel: freezed == couponModel ? _self.couponModel : couponModel // ignore: cast_nullable_to_non_nullable
as CouponModel?,
  ));
}
/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CouponModelCopyWith<$Res>? get couponModel {
    if (_self.couponModel == null) {
    return null;
  }

  return $CouponModelCopyWith<$Res>(_self.couponModel!, (value) {
    return _then(_self.copyWith(couponModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderModel].
extension OrderModelPatterns on OrderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? userId,  int? addressId,  int? type,  double? deliveryPrice,  double? price,  double? totalPrice,  int? couponId,  int? couponDiscount,  int? paymentMethod,  int? status,  String? createdAt,  String? updatedAt, @JsonKey(name: 'coupon')  CouponModel? couponModel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
return $default(_that.id,_that.userId,_that.addressId,_that.type,_that.deliveryPrice,_that.price,_that.totalPrice,_that.couponId,_that.couponDiscount,_that.paymentMethod,_that.status,_that.createdAt,_that.updatedAt,_that.couponModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? userId,  int? addressId,  int? type,  double? deliveryPrice,  double? price,  double? totalPrice,  int? couponId,  int? couponDiscount,  int? paymentMethod,  int? status,  String? createdAt,  String? updatedAt, @JsonKey(name: 'coupon')  CouponModel? couponModel)  $default,) {final _that = this;
switch (_that) {
case _OrderModel():
return $default(_that.id,_that.userId,_that.addressId,_that.type,_that.deliveryPrice,_that.price,_that.totalPrice,_that.couponId,_that.couponDiscount,_that.paymentMethod,_that.status,_that.createdAt,_that.updatedAt,_that.couponModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? userId,  int? addressId,  int? type,  double? deliveryPrice,  double? price,  double? totalPrice,  int? couponId,  int? couponDiscount,  int? paymentMethod,  int? status,  String? createdAt,  String? updatedAt, @JsonKey(name: 'coupon')  CouponModel? couponModel)?  $default,) {final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
return $default(_that.id,_that.userId,_that.addressId,_that.type,_that.deliveryPrice,_that.price,_that.totalPrice,_that.couponId,_that.couponDiscount,_that.paymentMethod,_that.status,_that.createdAt,_that.updatedAt,_that.couponModel);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _OrderModel extends OrderModel {
  const _OrderModel({this.id, this.userId, this.addressId, this.type, this.deliveryPrice, this.price, this.totalPrice, this.couponId, this.couponDiscount, this.paymentMethod, this.status, this.createdAt, this.updatedAt, @JsonKey(name: 'coupon') this.couponModel}): super._();
  factory _OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);

@override final  int? id;
@override final  int? userId;
@override final  int? addressId;
@override final  int? type;
// 0 => Delivery, 1 => Drive Thru
@override final  double? deliveryPrice;
@override final  double? price;
@override final  double? totalPrice;
@override final  int? couponId;
@override final  int? couponDiscount;
@override final  int? paymentMethod;
// 0 => Cash, 1 => Card
@override final  int? status;
// حالة الطلب (مثال: 0 => قيد الانتظار)
@override final  String? createdAt;
@override final  String? updatedAt;
@override@JsonKey(name: 'coupon') final  CouponModel? couponModel;

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderModelCopyWith<_OrderModel> get copyWith => __$OrderModelCopyWithImpl<_OrderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.addressId, addressId) || other.addressId == addressId)&&(identical(other.type, type) || other.type == type)&&(identical(other.deliveryPrice, deliveryPrice) || other.deliveryPrice == deliveryPrice)&&(identical(other.price, price) || other.price == price)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.couponId, couponId) || other.couponId == couponId)&&(identical(other.couponDiscount, couponDiscount) || other.couponDiscount == couponDiscount)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.couponModel, couponModel) || other.couponModel == couponModel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,addressId,type,deliveryPrice,price,totalPrice,couponId,couponDiscount,paymentMethod,status,createdAt,updatedAt,couponModel);

@override
String toString() {
  return 'OrderModel(id: $id, userId: $userId, addressId: $addressId, type: $type, deliveryPrice: $deliveryPrice, price: $price, totalPrice: $totalPrice, couponId: $couponId, couponDiscount: $couponDiscount, paymentMethod: $paymentMethod, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, couponModel: $couponModel)';
}


}

/// @nodoc
abstract mixin class _$OrderModelCopyWith<$Res> implements $OrderModelCopyWith<$Res> {
  factory _$OrderModelCopyWith(_OrderModel value, $Res Function(_OrderModel) _then) = __$OrderModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? userId, int? addressId, int? type, double? deliveryPrice, double? price, double? totalPrice, int? couponId, int? couponDiscount, int? paymentMethod, int? status, String? createdAt, String? updatedAt,@JsonKey(name: 'coupon') CouponModel? couponModel
});


@override $CouponModelCopyWith<$Res>? get couponModel;

}
/// @nodoc
class __$OrderModelCopyWithImpl<$Res>
    implements _$OrderModelCopyWith<$Res> {
  __$OrderModelCopyWithImpl(this._self, this._then);

  final _OrderModel _self;
  final $Res Function(_OrderModel) _then;

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = freezed,Object? addressId = freezed,Object? type = freezed,Object? deliveryPrice = freezed,Object? price = freezed,Object? totalPrice = freezed,Object? couponId = freezed,Object? couponDiscount = freezed,Object? paymentMethod = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? couponModel = freezed,}) {
  return _then(_OrderModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,addressId: freezed == addressId ? _self.addressId : addressId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int?,deliveryPrice: freezed == deliveryPrice ? _self.deliveryPrice : deliveryPrice // ignore: cast_nullable_to_non_nullable
as double?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,totalPrice: freezed == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double?,couponId: freezed == couponId ? _self.couponId : couponId // ignore: cast_nullable_to_non_nullable
as int?,couponDiscount: freezed == couponDiscount ? _self.couponDiscount : couponDiscount // ignore: cast_nullable_to_non_nullable
as int?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,couponModel: freezed == couponModel ? _self.couponModel : couponModel // ignore: cast_nullable_to_non_nullable
as CouponModel?,
  ));
}

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CouponModelCopyWith<$Res>? get couponModel {
    if (_self.couponModel == null) {
    return null;
  }

  return $CouponModelCopyWith<$Res>(_self.couponModel!, (value) {
    return _then(_self.copyWith(couponModel: value));
  });
}
}

// dart format on
