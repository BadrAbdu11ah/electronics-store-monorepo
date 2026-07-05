// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent()';
}


}

/// @nodoc
class $CartEventCopyWith<$Res>  {
$CartEventCopyWith(CartEvent _, $Res Function(CartEvent) __);
}


/// Adds pattern-matching-related methods to [CartEvent].
extension CartEventPatterns on CartEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _LoadCart value)?  loadCart,TResult Function( _UpdateQuantity value)?  updateQuantity,TResult Function( _ApplyCoupon value)?  applyCoupon,TResult Function( _DeleteItem value)?  deleteItem,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadCart() when loadCart != null:
return loadCart(_that);case _UpdateQuantity() when updateQuantity != null:
return updateQuantity(_that);case _ApplyCoupon() when applyCoupon != null:
return applyCoupon(_that);case _DeleteItem() when deleteItem != null:
return deleteItem(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _LoadCart value)  loadCart,required TResult Function( _UpdateQuantity value)  updateQuantity,required TResult Function( _ApplyCoupon value)  applyCoupon,required TResult Function( _DeleteItem value)  deleteItem,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _LoadCart():
return loadCart(_that);case _UpdateQuantity():
return updateQuantity(_that);case _ApplyCoupon():
return applyCoupon(_that);case _DeleteItem():
return deleteItem(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _LoadCart value)?  loadCart,TResult? Function( _UpdateQuantity value)?  updateQuantity,TResult? Function( _ApplyCoupon value)?  applyCoupon,TResult? Function( _DeleteItem value)?  deleteItem,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadCart() when loadCart != null:
return loadCart(_that);case _UpdateQuantity() when updateQuantity != null:
return updateQuantity(_that);case _ApplyCoupon() when applyCoupon != null:
return applyCoupon(_that);case _DeleteItem() when deleteItem != null:
return deleteItem(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  loadCart,TResult Function( int itemId,  int delta)?  updateQuantity,TResult Function( String couponName)?  applyCoupon,TResult Function( int itemId)?  deleteItem,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadCart() when loadCart != null:
return loadCart();case _UpdateQuantity() when updateQuantity != null:
return updateQuantity(_that.itemId,_that.delta);case _ApplyCoupon() when applyCoupon != null:
return applyCoupon(_that.couponName);case _DeleteItem() when deleteItem != null:
return deleteItem(_that.itemId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  loadCart,required TResult Function( int itemId,  int delta)  updateQuantity,required TResult Function( String couponName)  applyCoupon,required TResult Function( int itemId)  deleteItem,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _LoadCart():
return loadCart();case _UpdateQuantity():
return updateQuantity(_that.itemId,_that.delta);case _ApplyCoupon():
return applyCoupon(_that.couponName);case _DeleteItem():
return deleteItem(_that.itemId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  loadCart,TResult? Function( int itemId,  int delta)?  updateQuantity,TResult? Function( String couponName)?  applyCoupon,TResult? Function( int itemId)?  deleteItem,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadCart() when loadCart != null:
return loadCart();case _UpdateQuantity() when updateQuantity != null:
return updateQuantity(_that.itemId,_that.delta);case _ApplyCoupon() when applyCoupon != null:
return applyCoupon(_that.couponName);case _DeleteItem() when deleteItem != null:
return deleteItem(_that.itemId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements CartEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent.started()';
}


}




/// @nodoc


class _LoadCart implements CartEvent {
  const _LoadCart();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadCart);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent.loadCart()';
}


}




/// @nodoc


class _UpdateQuantity implements CartEvent {
  const _UpdateQuantity({required this.itemId, required this.delta});
  

 final  int itemId;
 final  int delta;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateQuantityCopyWith<_UpdateQuantity> get copyWith => __$UpdateQuantityCopyWithImpl<_UpdateQuantity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateQuantity&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.delta, delta) || other.delta == delta));
}


@override
int get hashCode => Object.hash(runtimeType,itemId,delta);

@override
String toString() {
  return 'CartEvent.updateQuantity(itemId: $itemId, delta: $delta)';
}


}

/// @nodoc
abstract mixin class _$UpdateQuantityCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$UpdateQuantityCopyWith(_UpdateQuantity value, $Res Function(_UpdateQuantity) _then) = __$UpdateQuantityCopyWithImpl;
@useResult
$Res call({
 int itemId, int delta
});




}
/// @nodoc
class __$UpdateQuantityCopyWithImpl<$Res>
    implements _$UpdateQuantityCopyWith<$Res> {
  __$UpdateQuantityCopyWithImpl(this._self, this._then);

  final _UpdateQuantity _self;
  final $Res Function(_UpdateQuantity) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? delta = null,}) {
  return _then(_UpdateQuantity(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,delta: null == delta ? _self.delta : delta // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _ApplyCoupon implements CartEvent {
  const _ApplyCoupon({required this.couponName});
  

 final  String couponName;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApplyCouponCopyWith<_ApplyCoupon> get copyWith => __$ApplyCouponCopyWithImpl<_ApplyCoupon>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApplyCoupon&&(identical(other.couponName, couponName) || other.couponName == couponName));
}


@override
int get hashCode => Object.hash(runtimeType,couponName);

@override
String toString() {
  return 'CartEvent.applyCoupon(couponName: $couponName)';
}


}

/// @nodoc
abstract mixin class _$ApplyCouponCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$ApplyCouponCopyWith(_ApplyCoupon value, $Res Function(_ApplyCoupon) _then) = __$ApplyCouponCopyWithImpl;
@useResult
$Res call({
 String couponName
});




}
/// @nodoc
class __$ApplyCouponCopyWithImpl<$Res>
    implements _$ApplyCouponCopyWith<$Res> {
  __$ApplyCouponCopyWithImpl(this._self, this._then);

  final _ApplyCoupon _self;
  final $Res Function(_ApplyCoupon) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? couponName = null,}) {
  return _then(_ApplyCoupon(
couponName: null == couponName ? _self.couponName : couponName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DeleteItem implements CartEvent {
  const _DeleteItem({required this.itemId});
  

 final  int itemId;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteItemCopyWith<_DeleteItem> get copyWith => __$DeleteItemCopyWithImpl<_DeleteItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteItem&&(identical(other.itemId, itemId) || other.itemId == itemId));
}


@override
int get hashCode => Object.hash(runtimeType,itemId);

@override
String toString() {
  return 'CartEvent.deleteItem(itemId: $itemId)';
}


}

/// @nodoc
abstract mixin class _$DeleteItemCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$DeleteItemCopyWith(_DeleteItem value, $Res Function(_DeleteItem) _then) = __$DeleteItemCopyWithImpl;
@useResult
$Res call({
 int itemId
});




}
/// @nodoc
class __$DeleteItemCopyWithImpl<$Res>
    implements _$DeleteItemCopyWith<$Res> {
  __$DeleteItemCopyWithImpl(this._self, this._then);

  final _DeleteItem _self;
  final $Res Function(_DeleteItem) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? itemId = null,}) {
  return _then(_DeleteItem(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$CartStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartStatus()';
}


}

/// @nodoc
class $CartStatusCopyWith<$Res>  {
$CartStatusCopyWith(CartStatus _, $Res Function(CartStatus) __);
}


/// Adds pattern-matching-related methods to [CartStatus].
extension CartStatusPatterns on CartStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _NoData value)?  noData,TResult Function( _ServerFailure value)?  serverFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _NoData() when noData != null:
return noData(_that);case _ServerFailure() when serverFailure != null:
return serverFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _NoData value)  noData,required TResult Function( _ServerFailure value)  serverFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _NoData():
return noData(_that);case _ServerFailure():
return serverFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _NoData value)?  noData,TResult? Function( _ServerFailure value)?  serverFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _NoData() when noData != null:
return noData(_that);case _ServerFailure() when serverFailure != null:
return serverFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  loaded,TResult Function( String message)?  noData,TResult Function( String message)?  serverFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded();case _NoData() when noData != null:
return noData(_that.message);case _ServerFailure() when serverFailure != null:
return serverFailure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  loaded,required TResult Function( String message)  noData,required TResult Function( String message)  serverFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded();case _NoData():
return noData(_that.message);case _ServerFailure():
return serverFailure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  loaded,TResult? Function( String message)?  noData,TResult? Function( String message)?  serverFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded();case _NoData() when noData != null:
return noData(_that.message);case _ServerFailure() when serverFailure != null:
return serverFailure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements CartStatus {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartStatus.initial()';
}


}




/// @nodoc


class _Loading implements CartStatus {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartStatus.loading()';
}


}




/// @nodoc


class _Loaded implements CartStatus {
  const _Loaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartStatus.loaded()';
}


}




/// @nodoc


class _NoData implements CartStatus {
  const _NoData(this.message);
  

 final  String message;

/// Create a copy of CartStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoDataCopyWith<_NoData> get copyWith => __$NoDataCopyWithImpl<_NoData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoData&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CartStatus.noData(message: $message)';
}


}

/// @nodoc
abstract mixin class _$NoDataCopyWith<$Res> implements $CartStatusCopyWith<$Res> {
  factory _$NoDataCopyWith(_NoData value, $Res Function(_NoData) _then) = __$NoDataCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$NoDataCopyWithImpl<$Res>
    implements _$NoDataCopyWith<$Res> {
  __$NoDataCopyWithImpl(this._self, this._then);

  final _NoData _self;
  final $Res Function(_NoData) _then;

/// Create a copy of CartStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_NoData(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ServerFailure implements CartStatus {
  const _ServerFailure(this.message);
  

 final  String message;

/// Create a copy of CartStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServerFailureCopyWith<_ServerFailure> get copyWith => __$ServerFailureCopyWithImpl<_ServerFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CartStatus.serverFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ServerFailureCopyWith<$Res> implements $CartStatusCopyWith<$Res> {
  factory _$ServerFailureCopyWith(_ServerFailure value, $Res Function(_ServerFailure) _then) = __$ServerFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ServerFailureCopyWithImpl<$Res>
    implements _$ServerFailureCopyWith<$Res> {
  __$ServerFailureCopyWithImpl(this._self, this._then);

  final _ServerFailure _self;
  final $Res Function(_ServerFailure) _then;

/// Create a copy of CartStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ServerFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$CouponStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CouponStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CouponStatus()';
}


}

/// @nodoc
class $CouponStatusCopyWith<$Res>  {
$CouponStatusCopyWith(CouponStatus _, $Res Function(CouponStatus) __);
}


/// Adds pattern-matching-related methods to [CouponStatus].
extension CouponStatusPatterns on CouponStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CouponInitial value)?  initial,TResult Function( _CouponSuccess value)?  couponSuccess,TResult Function( _CouponFailure value)?  couponFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CouponInitial() when initial != null:
return initial(_that);case _CouponSuccess() when couponSuccess != null:
return couponSuccess(_that);case _CouponFailure() when couponFailure != null:
return couponFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CouponInitial value)  initial,required TResult Function( _CouponSuccess value)  couponSuccess,required TResult Function( _CouponFailure value)  couponFailure,}){
final _that = this;
switch (_that) {
case _CouponInitial():
return initial(_that);case _CouponSuccess():
return couponSuccess(_that);case _CouponFailure():
return couponFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CouponInitial value)?  initial,TResult? Function( _CouponSuccess value)?  couponSuccess,TResult? Function( _CouponFailure value)?  couponFailure,}){
final _that = this;
switch (_that) {
case _CouponInitial() when initial != null:
return initial(_that);case _CouponSuccess() when couponSuccess != null:
return couponSuccess(_that);case _CouponFailure() when couponFailure != null:
return couponFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( String message)?  couponSuccess,TResult Function( String message)?  couponFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CouponInitial() when initial != null:
return initial();case _CouponSuccess() when couponSuccess != null:
return couponSuccess(_that.message);case _CouponFailure() when couponFailure != null:
return couponFailure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( String message)  couponSuccess,required TResult Function( String message)  couponFailure,}) {final _that = this;
switch (_that) {
case _CouponInitial():
return initial();case _CouponSuccess():
return couponSuccess(_that.message);case _CouponFailure():
return couponFailure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( String message)?  couponSuccess,TResult? Function( String message)?  couponFailure,}) {final _that = this;
switch (_that) {
case _CouponInitial() when initial != null:
return initial();case _CouponSuccess() when couponSuccess != null:
return couponSuccess(_that.message);case _CouponFailure() when couponFailure != null:
return couponFailure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _CouponInitial implements CouponStatus {
  const _CouponInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CouponInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CouponStatus.initial()';
}


}




/// @nodoc


class _CouponSuccess implements CouponStatus {
  const _CouponSuccess(this.message);
  

 final  String message;

/// Create a copy of CouponStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CouponSuccessCopyWith<_CouponSuccess> get copyWith => __$CouponSuccessCopyWithImpl<_CouponSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CouponSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CouponStatus.couponSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class _$CouponSuccessCopyWith<$Res> implements $CouponStatusCopyWith<$Res> {
  factory _$CouponSuccessCopyWith(_CouponSuccess value, $Res Function(_CouponSuccess) _then) = __$CouponSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$CouponSuccessCopyWithImpl<$Res>
    implements _$CouponSuccessCopyWith<$Res> {
  __$CouponSuccessCopyWithImpl(this._self, this._then);

  final _CouponSuccess _self;
  final $Res Function(_CouponSuccess) _then;

/// Create a copy of CouponStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_CouponSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CouponFailure implements CouponStatus {
  const _CouponFailure(this.message);
  

 final  String message;

/// Create a copy of CouponStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CouponFailureCopyWith<_CouponFailure> get copyWith => __$CouponFailureCopyWithImpl<_CouponFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CouponFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CouponStatus.couponFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$CouponFailureCopyWith<$Res> implements $CouponStatusCopyWith<$Res> {
  factory _$CouponFailureCopyWith(_CouponFailure value, $Res Function(_CouponFailure) _then) = __$CouponFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$CouponFailureCopyWithImpl<$Res>
    implements _$CouponFailureCopyWith<$Res> {
  __$CouponFailureCopyWithImpl(this._self, this._then);

  final _CouponFailure _self;
  final $Res Function(_CouponFailure) _then;

/// Create a copy of CouponStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_CouponFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$CartState {

 CartStatus get status; CouponStatus get couponStatus; List<CartModel> get cartItems; List<int> get updatingItemIds;// قائمة لحفظ الـ (آي دي) المغلقة أثناء التحديث منعاً للضغط المتكرر
 double get subtotalPrice;// السعر الإجمالي بالريال قبل الشحن والخصم
 double get totalAppPrice;// السعر النهائي بالريال بعد الخصم والشحن
 int get discountPercentage;// نسبة خصم الكوبون
 double get shippingPrice;// سعر الشحن الثابت بالريال
 int get totalQuantity;// العدد الكلي لقطع السلة
 String? get couponId; String? get couponName; String get lang;
/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartStateCopyWith<CartState> get copyWith => _$CartStateCopyWithImpl<CartState>(this as CartState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartState&&(identical(other.status, status) || other.status == status)&&(identical(other.couponStatus, couponStatus) || other.couponStatus == couponStatus)&&const DeepCollectionEquality().equals(other.cartItems, cartItems)&&const DeepCollectionEquality().equals(other.updatingItemIds, updatingItemIds)&&(identical(other.subtotalPrice, subtotalPrice) || other.subtotalPrice == subtotalPrice)&&(identical(other.totalAppPrice, totalAppPrice) || other.totalAppPrice == totalAppPrice)&&(identical(other.discountPercentage, discountPercentage) || other.discountPercentage == discountPercentage)&&(identical(other.shippingPrice, shippingPrice) || other.shippingPrice == shippingPrice)&&(identical(other.totalQuantity, totalQuantity) || other.totalQuantity == totalQuantity)&&(identical(other.couponId, couponId) || other.couponId == couponId)&&(identical(other.couponName, couponName) || other.couponName == couponName)&&(identical(other.lang, lang) || other.lang == lang));
}


@override
int get hashCode => Object.hash(runtimeType,status,couponStatus,const DeepCollectionEquality().hash(cartItems),const DeepCollectionEquality().hash(updatingItemIds),subtotalPrice,totalAppPrice,discountPercentage,shippingPrice,totalQuantity,couponId,couponName,lang);

@override
String toString() {
  return 'CartState(status: $status, couponStatus: $couponStatus, cartItems: $cartItems, updatingItemIds: $updatingItemIds, subtotalPrice: $subtotalPrice, totalAppPrice: $totalAppPrice, discountPercentage: $discountPercentage, shippingPrice: $shippingPrice, totalQuantity: $totalQuantity, couponId: $couponId, couponName: $couponName, lang: $lang)';
}


}

/// @nodoc
abstract mixin class $CartStateCopyWith<$Res>  {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) _then) = _$CartStateCopyWithImpl;
@useResult
$Res call({
 CartStatus status, CouponStatus couponStatus, List<CartModel> cartItems, List<int> updatingItemIds, double subtotalPrice, double totalAppPrice, int discountPercentage, double shippingPrice, int totalQuantity, String? couponId, String? couponName, String lang
});


$CartStatusCopyWith<$Res> get status;$CouponStatusCopyWith<$Res> get couponStatus;

}
/// @nodoc
class _$CartStateCopyWithImpl<$Res>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._self, this._then);

  final CartState _self;
  final $Res Function(CartState) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? couponStatus = null,Object? cartItems = null,Object? updatingItemIds = null,Object? subtotalPrice = null,Object? totalAppPrice = null,Object? discountPercentage = null,Object? shippingPrice = null,Object? totalQuantity = null,Object? couponId = freezed,Object? couponName = freezed,Object? lang = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CartStatus,couponStatus: null == couponStatus ? _self.couponStatus : couponStatus // ignore: cast_nullable_to_non_nullable
as CouponStatus,cartItems: null == cartItems ? _self.cartItems : cartItems // ignore: cast_nullable_to_non_nullable
as List<CartModel>,updatingItemIds: null == updatingItemIds ? _self.updatingItemIds : updatingItemIds // ignore: cast_nullable_to_non_nullable
as List<int>,subtotalPrice: null == subtotalPrice ? _self.subtotalPrice : subtotalPrice // ignore: cast_nullable_to_non_nullable
as double,totalAppPrice: null == totalAppPrice ? _self.totalAppPrice : totalAppPrice // ignore: cast_nullable_to_non_nullable
as double,discountPercentage: null == discountPercentage ? _self.discountPercentage : discountPercentage // ignore: cast_nullable_to_non_nullable
as int,shippingPrice: null == shippingPrice ? _self.shippingPrice : shippingPrice // ignore: cast_nullable_to_non_nullable
as double,totalQuantity: null == totalQuantity ? _self.totalQuantity : totalQuantity // ignore: cast_nullable_to_non_nullable
as int,couponId: freezed == couponId ? _self.couponId : couponId // ignore: cast_nullable_to_non_nullable
as String?,couponName: freezed == couponName ? _self.couponName : couponName // ignore: cast_nullable_to_non_nullable
as String?,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartStatusCopyWith<$Res> get status {
  
  return $CartStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CouponStatusCopyWith<$Res> get couponStatus {
  
  return $CouponStatusCopyWith<$Res>(_self.couponStatus, (value) {
    return _then(_self.copyWith(couponStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartState].
extension CartStatePatterns on CartState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartState value)  $default,){
final _that = this;
switch (_that) {
case _CartState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartState value)?  $default,){
final _that = this;
switch (_that) {
case _CartState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CartStatus status,  CouponStatus couponStatus,  List<CartModel> cartItems,  List<int> updatingItemIds,  double subtotalPrice,  double totalAppPrice,  int discountPercentage,  double shippingPrice,  int totalQuantity,  String? couponId,  String? couponName,  String lang)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartState() when $default != null:
return $default(_that.status,_that.couponStatus,_that.cartItems,_that.updatingItemIds,_that.subtotalPrice,_that.totalAppPrice,_that.discountPercentage,_that.shippingPrice,_that.totalQuantity,_that.couponId,_that.couponName,_that.lang);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CartStatus status,  CouponStatus couponStatus,  List<CartModel> cartItems,  List<int> updatingItemIds,  double subtotalPrice,  double totalAppPrice,  int discountPercentage,  double shippingPrice,  int totalQuantity,  String? couponId,  String? couponName,  String lang)  $default,) {final _that = this;
switch (_that) {
case _CartState():
return $default(_that.status,_that.couponStatus,_that.cartItems,_that.updatingItemIds,_that.subtotalPrice,_that.totalAppPrice,_that.discountPercentage,_that.shippingPrice,_that.totalQuantity,_that.couponId,_that.couponName,_that.lang);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CartStatus status,  CouponStatus couponStatus,  List<CartModel> cartItems,  List<int> updatingItemIds,  double subtotalPrice,  double totalAppPrice,  int discountPercentage,  double shippingPrice,  int totalQuantity,  String? couponId,  String? couponName,  String lang)?  $default,) {final _that = this;
switch (_that) {
case _CartState() when $default != null:
return $default(_that.status,_that.couponStatus,_that.cartItems,_that.updatingItemIds,_that.subtotalPrice,_that.totalAppPrice,_that.discountPercentage,_that.shippingPrice,_that.totalQuantity,_that.couponId,_that.couponName,_that.lang);case _:
  return null;

}
}

}

/// @nodoc


class _CartState implements CartState {
  const _CartState({this.status = const CartStatus.initial(), this.couponStatus = const CouponStatus.initial(), final  List<CartModel> cartItems = const [], final  List<int> updatingItemIds = const [], this.subtotalPrice = 0.0, this.totalAppPrice = 0.0, this.discountPercentage = 0, this.shippingPrice = 20.0, this.totalQuantity = 0, this.couponId, this.couponName, this.lang = "en"}): _cartItems = cartItems,_updatingItemIds = updatingItemIds;
  

@override@JsonKey() final  CartStatus status;
@override@JsonKey() final  CouponStatus couponStatus;
 final  List<CartModel> _cartItems;
@override@JsonKey() List<CartModel> get cartItems {
  if (_cartItems is EqualUnmodifiableListView) return _cartItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cartItems);
}

 final  List<int> _updatingItemIds;
@override@JsonKey() List<int> get updatingItemIds {
  if (_updatingItemIds is EqualUnmodifiableListView) return _updatingItemIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_updatingItemIds);
}

// قائمة لحفظ الـ (آي دي) المغلقة أثناء التحديث منعاً للضغط المتكرر
@override@JsonKey() final  double subtotalPrice;
// السعر الإجمالي بالريال قبل الشحن والخصم
@override@JsonKey() final  double totalAppPrice;
// السعر النهائي بالريال بعد الخصم والشحن
@override@JsonKey() final  int discountPercentage;
// نسبة خصم الكوبون
@override@JsonKey() final  double shippingPrice;
// سعر الشحن الثابت بالريال
@override@JsonKey() final  int totalQuantity;
// العدد الكلي لقطع السلة
@override final  String? couponId;
@override final  String? couponName;
@override@JsonKey() final  String lang;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartStateCopyWith<_CartState> get copyWith => __$CartStateCopyWithImpl<_CartState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartState&&(identical(other.status, status) || other.status == status)&&(identical(other.couponStatus, couponStatus) || other.couponStatus == couponStatus)&&const DeepCollectionEquality().equals(other._cartItems, _cartItems)&&const DeepCollectionEquality().equals(other._updatingItemIds, _updatingItemIds)&&(identical(other.subtotalPrice, subtotalPrice) || other.subtotalPrice == subtotalPrice)&&(identical(other.totalAppPrice, totalAppPrice) || other.totalAppPrice == totalAppPrice)&&(identical(other.discountPercentage, discountPercentage) || other.discountPercentage == discountPercentage)&&(identical(other.shippingPrice, shippingPrice) || other.shippingPrice == shippingPrice)&&(identical(other.totalQuantity, totalQuantity) || other.totalQuantity == totalQuantity)&&(identical(other.couponId, couponId) || other.couponId == couponId)&&(identical(other.couponName, couponName) || other.couponName == couponName)&&(identical(other.lang, lang) || other.lang == lang));
}


@override
int get hashCode => Object.hash(runtimeType,status,couponStatus,const DeepCollectionEquality().hash(_cartItems),const DeepCollectionEquality().hash(_updatingItemIds),subtotalPrice,totalAppPrice,discountPercentage,shippingPrice,totalQuantity,couponId,couponName,lang);

@override
String toString() {
  return 'CartState(status: $status, couponStatus: $couponStatus, cartItems: $cartItems, updatingItemIds: $updatingItemIds, subtotalPrice: $subtotalPrice, totalAppPrice: $totalAppPrice, discountPercentage: $discountPercentage, shippingPrice: $shippingPrice, totalQuantity: $totalQuantity, couponId: $couponId, couponName: $couponName, lang: $lang)';
}


}

/// @nodoc
abstract mixin class _$CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$CartStateCopyWith(_CartState value, $Res Function(_CartState) _then) = __$CartStateCopyWithImpl;
@override @useResult
$Res call({
 CartStatus status, CouponStatus couponStatus, List<CartModel> cartItems, List<int> updatingItemIds, double subtotalPrice, double totalAppPrice, int discountPercentage, double shippingPrice, int totalQuantity, String? couponId, String? couponName, String lang
});


@override $CartStatusCopyWith<$Res> get status;@override $CouponStatusCopyWith<$Res> get couponStatus;

}
/// @nodoc
class __$CartStateCopyWithImpl<$Res>
    implements _$CartStateCopyWith<$Res> {
  __$CartStateCopyWithImpl(this._self, this._then);

  final _CartState _self;
  final $Res Function(_CartState) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? couponStatus = null,Object? cartItems = null,Object? updatingItemIds = null,Object? subtotalPrice = null,Object? totalAppPrice = null,Object? discountPercentage = null,Object? shippingPrice = null,Object? totalQuantity = null,Object? couponId = freezed,Object? couponName = freezed,Object? lang = null,}) {
  return _then(_CartState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CartStatus,couponStatus: null == couponStatus ? _self.couponStatus : couponStatus // ignore: cast_nullable_to_non_nullable
as CouponStatus,cartItems: null == cartItems ? _self._cartItems : cartItems // ignore: cast_nullable_to_non_nullable
as List<CartModel>,updatingItemIds: null == updatingItemIds ? _self._updatingItemIds : updatingItemIds // ignore: cast_nullable_to_non_nullable
as List<int>,subtotalPrice: null == subtotalPrice ? _self.subtotalPrice : subtotalPrice // ignore: cast_nullable_to_non_nullable
as double,totalAppPrice: null == totalAppPrice ? _self.totalAppPrice : totalAppPrice // ignore: cast_nullable_to_non_nullable
as double,discountPercentage: null == discountPercentage ? _self.discountPercentage : discountPercentage // ignore: cast_nullable_to_non_nullable
as int,shippingPrice: null == shippingPrice ? _self.shippingPrice : shippingPrice // ignore: cast_nullable_to_non_nullable
as double,totalQuantity: null == totalQuantity ? _self.totalQuantity : totalQuantity // ignore: cast_nullable_to_non_nullable
as int,couponId: freezed == couponId ? _self.couponId : couponId // ignore: cast_nullable_to_non_nullable
as String?,couponName: freezed == couponName ? _self.couponName : couponName // ignore: cast_nullable_to_non_nullable
as String?,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartStatusCopyWith<$Res> get status {
  
  return $CartStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CouponStatusCopyWith<$Res> get couponStatus {
  
  return $CouponStatusCopyWith<$Res>(_self.couponStatus, (value) {
    return _then(_self.copyWith(couponStatus: value));
  });
}
}

// dart format on
