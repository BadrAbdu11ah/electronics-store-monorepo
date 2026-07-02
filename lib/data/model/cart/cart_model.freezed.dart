// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartModel {

 ItemModel? get item; int? get countItems; double? get itemPrice; double? get totalItemPrice;
/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartModelCopyWith<CartModel> get copyWith => _$CartModelCopyWithImpl<CartModel>(this as CartModel, _$identity);

  /// Serializes this CartModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartModel&&(identical(other.item, item) || other.item == item)&&(identical(other.countItems, countItems) || other.countItems == countItems)&&(identical(other.itemPrice, itemPrice) || other.itemPrice == itemPrice)&&(identical(other.totalItemPrice, totalItemPrice) || other.totalItemPrice == totalItemPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,item,countItems,itemPrice,totalItemPrice);

@override
String toString() {
  return 'CartModel(item: $item, countItems: $countItems, itemPrice: $itemPrice, totalItemPrice: $totalItemPrice)';
}


}

/// @nodoc
abstract mixin class $CartModelCopyWith<$Res>  {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) _then) = _$CartModelCopyWithImpl;
@useResult
$Res call({
 ItemModel? item, int? countItems, double? itemPrice, double? totalItemPrice
});


$ItemModelCopyWith<$Res>? get item;

}
/// @nodoc
class _$CartModelCopyWithImpl<$Res>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._self, this._then);

  final CartModel _self;
  final $Res Function(CartModel) _then;

/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? item = freezed,Object? countItems = freezed,Object? itemPrice = freezed,Object? totalItemPrice = freezed,}) {
  return _then(_self.copyWith(
item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as ItemModel?,countItems: freezed == countItems ? _self.countItems : countItems // ignore: cast_nullable_to_non_nullable
as int?,itemPrice: freezed == itemPrice ? _self.itemPrice : itemPrice // ignore: cast_nullable_to_non_nullable
as double?,totalItemPrice: freezed == totalItemPrice ? _self.totalItemPrice : totalItemPrice // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemModelCopyWith<$Res>? get item {
    if (_self.item == null) {
    return null;
  }

  return $ItemModelCopyWith<$Res>(_self.item!, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartModel].
extension CartModelPatterns on CartModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartModel value)  $default,){
final _that = this;
switch (_that) {
case _CartModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ItemModel? item,  int? countItems,  double? itemPrice,  double? totalItemPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartModel() when $default != null:
return $default(_that.item,_that.countItems,_that.itemPrice,_that.totalItemPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ItemModel? item,  int? countItems,  double? itemPrice,  double? totalItemPrice)  $default,) {final _that = this;
switch (_that) {
case _CartModel():
return $default(_that.item,_that.countItems,_that.itemPrice,_that.totalItemPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ItemModel? item,  int? countItems,  double? itemPrice,  double? totalItemPrice)?  $default,) {final _that = this;
switch (_that) {
case _CartModel() when $default != null:
return $default(_that.item,_that.countItems,_that.itemPrice,_that.totalItemPrice);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _CartModel extends CartModel {
  const _CartModel({this.item, this.countItems, this.itemPrice, this.totalItemPrice}): super._();
  factory _CartModel.fromJson(Map<String, dynamic> json) => _$CartModelFromJson(json);

@override final  ItemModel? item;
@override final  int? countItems;
@override final  double? itemPrice;
@override final  double? totalItemPrice;

/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartModelCopyWith<_CartModel> get copyWith => __$CartModelCopyWithImpl<_CartModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartModel&&(identical(other.item, item) || other.item == item)&&(identical(other.countItems, countItems) || other.countItems == countItems)&&(identical(other.itemPrice, itemPrice) || other.itemPrice == itemPrice)&&(identical(other.totalItemPrice, totalItemPrice) || other.totalItemPrice == totalItemPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,item,countItems,itemPrice,totalItemPrice);

@override
String toString() {
  return 'CartModel(item: $item, countItems: $countItems, itemPrice: $itemPrice, totalItemPrice: $totalItemPrice)';
}


}

/// @nodoc
abstract mixin class _$CartModelCopyWith<$Res> implements $CartModelCopyWith<$Res> {
  factory _$CartModelCopyWith(_CartModel value, $Res Function(_CartModel) _then) = __$CartModelCopyWithImpl;
@override @useResult
$Res call({
 ItemModel? item, int? countItems, double? itemPrice, double? totalItemPrice
});


@override $ItemModelCopyWith<$Res>? get item;

}
/// @nodoc
class __$CartModelCopyWithImpl<$Res>
    implements _$CartModelCopyWith<$Res> {
  __$CartModelCopyWithImpl(this._self, this._then);

  final _CartModel _self;
  final $Res Function(_CartModel) _then;

/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? item = freezed,Object? countItems = freezed,Object? itemPrice = freezed,Object? totalItemPrice = freezed,}) {
  return _then(_CartModel(
item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as ItemModel?,countItems: freezed == countItems ? _self.countItems : countItems // ignore: cast_nullable_to_non_nullable
as int?,itemPrice: freezed == itemPrice ? _self.itemPrice : itemPrice // ignore: cast_nullable_to_non_nullable
as double?,totalItemPrice: freezed == totalItemPrice ? _self.totalItemPrice : totalItemPrice // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemModelCopyWith<$Res>? get item {
    if (_self.item == null) {
    return null;
  }

  return $ItemModelCopyWith<$Res>(_self.item!, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}


/// @nodoc
mixin _$CartResponseModel {

@JsonKey(name: 'data') List<CartModel> get items; double get totalPrice; int get totalQuantity;
/// Create a copy of CartResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartResponseModelCopyWith<CartResponseModel> get copyWith => _$CartResponseModelCopyWithImpl<CartResponseModel>(this as CartResponseModel, _$identity);

  /// Serializes this CartResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartResponseModel&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.totalQuantity, totalQuantity) || other.totalQuantity == totalQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),totalPrice,totalQuantity);

@override
String toString() {
  return 'CartResponseModel(items: $items, totalPrice: $totalPrice, totalQuantity: $totalQuantity)';
}


}

/// @nodoc
abstract mixin class $CartResponseModelCopyWith<$Res>  {
  factory $CartResponseModelCopyWith(CartResponseModel value, $Res Function(CartResponseModel) _then) = _$CartResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<CartModel> items, double totalPrice, int totalQuantity
});




}
/// @nodoc
class _$CartResponseModelCopyWithImpl<$Res>
    implements $CartResponseModelCopyWith<$Res> {
  _$CartResponseModelCopyWithImpl(this._self, this._then);

  final CartResponseModel _self;
  final $Res Function(CartResponseModel) _then;

/// Create a copy of CartResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? totalPrice = null,Object? totalQuantity = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CartModel>,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,totalQuantity: null == totalQuantity ? _self.totalQuantity : totalQuantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CartResponseModel].
extension CartResponseModelPatterns on CartResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CartResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<CartModel> items,  double totalPrice,  int totalQuantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartResponseModel() when $default != null:
return $default(_that.items,_that.totalPrice,_that.totalQuantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<CartModel> items,  double totalPrice,  int totalQuantity)  $default,) {final _that = this;
switch (_that) {
case _CartResponseModel():
return $default(_that.items,_that.totalPrice,_that.totalQuantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'data')  List<CartModel> items,  double totalPrice,  int totalQuantity)?  $default,) {final _that = this;
switch (_that) {
case _CartResponseModel() when $default != null:
return $default(_that.items,_that.totalPrice,_that.totalQuantity);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _CartResponseModel extends CartResponseModel {
  const _CartResponseModel({@JsonKey(name: 'data') required final  List<CartModel> items, required this.totalPrice, required this.totalQuantity}): _items = items,super._();
  factory _CartResponseModel.fromJson(Map<String, dynamic> json) => _$CartResponseModelFromJson(json);

 final  List<CartModel> _items;
@override@JsonKey(name: 'data') List<CartModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  double totalPrice;
@override final  int totalQuantity;

/// Create a copy of CartResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartResponseModelCopyWith<_CartResponseModel> get copyWith => __$CartResponseModelCopyWithImpl<_CartResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartResponseModel&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.totalQuantity, totalQuantity) || other.totalQuantity == totalQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),totalPrice,totalQuantity);

@override
String toString() {
  return 'CartResponseModel(items: $items, totalPrice: $totalPrice, totalQuantity: $totalQuantity)';
}


}

/// @nodoc
abstract mixin class _$CartResponseModelCopyWith<$Res> implements $CartResponseModelCopyWith<$Res> {
  factory _$CartResponseModelCopyWith(_CartResponseModel value, $Res Function(_CartResponseModel) _then) = __$CartResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<CartModel> items, double totalPrice, int totalQuantity
});




}
/// @nodoc
class __$CartResponseModelCopyWithImpl<$Res>
    implements _$CartResponseModelCopyWith<$Res> {
  __$CartResponseModelCopyWithImpl(this._self, this._then);

  final _CartResponseModel _self;
  final $Res Function(_CartResponseModel) _then;

/// Create a copy of CartResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? totalPrice = null,Object? totalQuantity = null,}) {
  return _then(_CartResponseModel(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CartModel>,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,totalQuantity: null == totalQuantity ? _self.totalQuantity : totalQuantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
