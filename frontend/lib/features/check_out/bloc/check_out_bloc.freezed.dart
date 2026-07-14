// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_out_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckOutEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckOutEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckOutEvent()';
}


}

/// @nodoc
class $CheckOutEventCopyWith<$Res>  {
$CheckOutEventCopyWith(CheckOutEvent _, $Res Function(CheckOutEvent) __);
}


/// Adds pattern-matching-related methods to [CheckOutEvent].
extension CheckOutEventPatterns on CheckOutEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _LoadAddresses value)?  loadAddresses,TResult Function( _ChoosePymentMethod value)?  choosePymentMethod,TResult Function( _ChooseDeliveryType value)?  chooseDeliveryType,TResult Function( _ChooseShippingAddress value)?  chooseShippingAddress,TResult Function( _Checkout value)?  checkout,TResult Function( _ResetStatusToLoaded value)?  resetStatusToLoaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadAddresses() when loadAddresses != null:
return loadAddresses(_that);case _ChoosePymentMethod() when choosePymentMethod != null:
return choosePymentMethod(_that);case _ChooseDeliveryType() when chooseDeliveryType != null:
return chooseDeliveryType(_that);case _ChooseShippingAddress() when chooseShippingAddress != null:
return chooseShippingAddress(_that);case _Checkout() when checkout != null:
return checkout(_that);case _ResetStatusToLoaded() when resetStatusToLoaded != null:
return resetStatusToLoaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _LoadAddresses value)  loadAddresses,required TResult Function( _ChoosePymentMethod value)  choosePymentMethod,required TResult Function( _ChooseDeliveryType value)  chooseDeliveryType,required TResult Function( _ChooseShippingAddress value)  chooseShippingAddress,required TResult Function( _Checkout value)  checkout,required TResult Function( _ResetStatusToLoaded value)  resetStatusToLoaded,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _LoadAddresses():
return loadAddresses(_that);case _ChoosePymentMethod():
return choosePymentMethod(_that);case _ChooseDeliveryType():
return chooseDeliveryType(_that);case _ChooseShippingAddress():
return chooseShippingAddress(_that);case _Checkout():
return checkout(_that);case _ResetStatusToLoaded():
return resetStatusToLoaded(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _LoadAddresses value)?  loadAddresses,TResult? Function( _ChoosePymentMethod value)?  choosePymentMethod,TResult? Function( _ChooseDeliveryType value)?  chooseDeliveryType,TResult? Function( _ChooseShippingAddress value)?  chooseShippingAddress,TResult? Function( _Checkout value)?  checkout,TResult? Function( _ResetStatusToLoaded value)?  resetStatusToLoaded,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadAddresses() when loadAddresses != null:
return loadAddresses(_that);case _ChoosePymentMethod() when choosePymentMethod != null:
return choosePymentMethod(_that);case _ChooseDeliveryType() when chooseDeliveryType != null:
return chooseDeliveryType(_that);case _ChooseShippingAddress() when chooseShippingAddress != null:
return chooseShippingAddress(_that);case _Checkout() when checkout != null:
return checkout(_that);case _ResetStatusToLoaded() when resetStatusToLoaded != null:
return resetStatusToLoaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  loadAddresses,TResult Function( String val)?  choosePymentMethod,TResult Function( String val)?  chooseDeliveryType,TResult Function( String val)?  chooseShippingAddress,TResult Function( String priceOrders,  String couponsID)?  checkout,TResult Function()?  resetStatusToLoaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadAddresses() when loadAddresses != null:
return loadAddresses();case _ChoosePymentMethod() when choosePymentMethod != null:
return choosePymentMethod(_that.val);case _ChooseDeliveryType() when chooseDeliveryType != null:
return chooseDeliveryType(_that.val);case _ChooseShippingAddress() when chooseShippingAddress != null:
return chooseShippingAddress(_that.val);case _Checkout() when checkout != null:
return checkout(_that.priceOrders,_that.couponsID);case _ResetStatusToLoaded() when resetStatusToLoaded != null:
return resetStatusToLoaded();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  loadAddresses,required TResult Function( String val)  choosePymentMethod,required TResult Function( String val)  chooseDeliveryType,required TResult Function( String val)  chooseShippingAddress,required TResult Function( String priceOrders,  String couponsID)  checkout,required TResult Function()  resetStatusToLoaded,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _LoadAddresses():
return loadAddresses();case _ChoosePymentMethod():
return choosePymentMethod(_that.val);case _ChooseDeliveryType():
return chooseDeliveryType(_that.val);case _ChooseShippingAddress():
return chooseShippingAddress(_that.val);case _Checkout():
return checkout(_that.priceOrders,_that.couponsID);case _ResetStatusToLoaded():
return resetStatusToLoaded();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  loadAddresses,TResult? Function( String val)?  choosePymentMethod,TResult? Function( String val)?  chooseDeliveryType,TResult? Function( String val)?  chooseShippingAddress,TResult? Function( String priceOrders,  String couponsID)?  checkout,TResult? Function()?  resetStatusToLoaded,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadAddresses() when loadAddresses != null:
return loadAddresses();case _ChoosePymentMethod() when choosePymentMethod != null:
return choosePymentMethod(_that.val);case _ChooseDeliveryType() when chooseDeliveryType != null:
return chooseDeliveryType(_that.val);case _ChooseShippingAddress() when chooseShippingAddress != null:
return chooseShippingAddress(_that.val);case _Checkout() when checkout != null:
return checkout(_that.priceOrders,_that.couponsID);case _ResetStatusToLoaded() when resetStatusToLoaded != null:
return resetStatusToLoaded();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements CheckOutEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckOutEvent.started()';
}


}




/// @nodoc


class _LoadAddresses implements CheckOutEvent {
  const _LoadAddresses();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadAddresses);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckOutEvent.loadAddresses()';
}


}




/// @nodoc


class _ChoosePymentMethod implements CheckOutEvent {
  const _ChoosePymentMethod(this.val);
  

 final  String val;

/// Create a copy of CheckOutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChoosePymentMethodCopyWith<_ChoosePymentMethod> get copyWith => __$ChoosePymentMethodCopyWithImpl<_ChoosePymentMethod>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChoosePymentMethod&&(identical(other.val, val) || other.val == val));
}


@override
int get hashCode => Object.hash(runtimeType,val);

@override
String toString() {
  return 'CheckOutEvent.choosePymentMethod(val: $val)';
}


}

/// @nodoc
abstract mixin class _$ChoosePymentMethodCopyWith<$Res> implements $CheckOutEventCopyWith<$Res> {
  factory _$ChoosePymentMethodCopyWith(_ChoosePymentMethod value, $Res Function(_ChoosePymentMethod) _then) = __$ChoosePymentMethodCopyWithImpl;
@useResult
$Res call({
 String val
});




}
/// @nodoc
class __$ChoosePymentMethodCopyWithImpl<$Res>
    implements _$ChoosePymentMethodCopyWith<$Res> {
  __$ChoosePymentMethodCopyWithImpl(this._self, this._then);

  final _ChoosePymentMethod _self;
  final $Res Function(_ChoosePymentMethod) _then;

/// Create a copy of CheckOutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? val = null,}) {
  return _then(_ChoosePymentMethod(
null == val ? _self.val : val // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ChooseDeliveryType implements CheckOutEvent {
  const _ChooseDeliveryType(this.val);
  

 final  String val;

/// Create a copy of CheckOutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChooseDeliveryTypeCopyWith<_ChooseDeliveryType> get copyWith => __$ChooseDeliveryTypeCopyWithImpl<_ChooseDeliveryType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChooseDeliveryType&&(identical(other.val, val) || other.val == val));
}


@override
int get hashCode => Object.hash(runtimeType,val);

@override
String toString() {
  return 'CheckOutEvent.chooseDeliveryType(val: $val)';
}


}

/// @nodoc
abstract mixin class _$ChooseDeliveryTypeCopyWith<$Res> implements $CheckOutEventCopyWith<$Res> {
  factory _$ChooseDeliveryTypeCopyWith(_ChooseDeliveryType value, $Res Function(_ChooseDeliveryType) _then) = __$ChooseDeliveryTypeCopyWithImpl;
@useResult
$Res call({
 String val
});




}
/// @nodoc
class __$ChooseDeliveryTypeCopyWithImpl<$Res>
    implements _$ChooseDeliveryTypeCopyWith<$Res> {
  __$ChooseDeliveryTypeCopyWithImpl(this._self, this._then);

  final _ChooseDeliveryType _self;
  final $Res Function(_ChooseDeliveryType) _then;

/// Create a copy of CheckOutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? val = null,}) {
  return _then(_ChooseDeliveryType(
null == val ? _self.val : val // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ChooseShippingAddress implements CheckOutEvent {
  const _ChooseShippingAddress(this.val);
  

 final  String val;

/// Create a copy of CheckOutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChooseShippingAddressCopyWith<_ChooseShippingAddress> get copyWith => __$ChooseShippingAddressCopyWithImpl<_ChooseShippingAddress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChooseShippingAddress&&(identical(other.val, val) || other.val == val));
}


@override
int get hashCode => Object.hash(runtimeType,val);

@override
String toString() {
  return 'CheckOutEvent.chooseShippingAddress(val: $val)';
}


}

/// @nodoc
abstract mixin class _$ChooseShippingAddressCopyWith<$Res> implements $CheckOutEventCopyWith<$Res> {
  factory _$ChooseShippingAddressCopyWith(_ChooseShippingAddress value, $Res Function(_ChooseShippingAddress) _then) = __$ChooseShippingAddressCopyWithImpl;
@useResult
$Res call({
 String val
});




}
/// @nodoc
class __$ChooseShippingAddressCopyWithImpl<$Res>
    implements _$ChooseShippingAddressCopyWith<$Res> {
  __$ChooseShippingAddressCopyWithImpl(this._self, this._then);

  final _ChooseShippingAddress _self;
  final $Res Function(_ChooseShippingAddress) _then;

/// Create a copy of CheckOutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? val = null,}) {
  return _then(_ChooseShippingAddress(
null == val ? _self.val : val // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Checkout implements CheckOutEvent {
  const _Checkout({required this.priceOrders, required this.couponsID});
  

 final  String priceOrders;
 final  String couponsID;

/// Create a copy of CheckOutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutCopyWith<_Checkout> get copyWith => __$CheckoutCopyWithImpl<_Checkout>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Checkout&&(identical(other.priceOrders, priceOrders) || other.priceOrders == priceOrders)&&(identical(other.couponsID, couponsID) || other.couponsID == couponsID));
}


@override
int get hashCode => Object.hash(runtimeType,priceOrders,couponsID);

@override
String toString() {
  return 'CheckOutEvent.checkout(priceOrders: $priceOrders, couponsID: $couponsID)';
}


}

/// @nodoc
abstract mixin class _$CheckoutCopyWith<$Res> implements $CheckOutEventCopyWith<$Res> {
  factory _$CheckoutCopyWith(_Checkout value, $Res Function(_Checkout) _then) = __$CheckoutCopyWithImpl;
@useResult
$Res call({
 String priceOrders, String couponsID
});




}
/// @nodoc
class __$CheckoutCopyWithImpl<$Res>
    implements _$CheckoutCopyWith<$Res> {
  __$CheckoutCopyWithImpl(this._self, this._then);

  final _Checkout _self;
  final $Res Function(_Checkout) _then;

/// Create a copy of CheckOutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? priceOrders = null,Object? couponsID = null,}) {
  return _then(_Checkout(
priceOrders: null == priceOrders ? _self.priceOrders : priceOrders // ignore: cast_nullable_to_non_nullable
as String,couponsID: null == couponsID ? _self.couponsID : couponsID // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ResetStatusToLoaded implements CheckOutEvent {
  const _ResetStatusToLoaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetStatusToLoaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckOutEvent.resetStatusToLoaded()';
}


}




/// @nodoc
mixin _$CheckOutStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckOutStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckOutStatus()';
}


}

/// @nodoc
class $CheckOutStatusCopyWith<$Res>  {
$CheckOutStatusCopyWith(CheckOutStatus _, $Res Function(CheckOutStatus) __);
}


/// Adds pattern-matching-related methods to [CheckOutStatus].
extension CheckOutStatusPatterns on CheckOutStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Success value)?  success,TResult Function( _ServerFailure value)?  serverFailure,TResult Function( _Failure value)?  failure,TResult Function( _CouponeFailure value)?  couponeFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Success() when success != null:
return success(_that);case _ServerFailure() when serverFailure != null:
return serverFailure(_that);case _Failure() when failure != null:
return failure(_that);case _CouponeFailure() when couponeFailure != null:
return couponeFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Success value)  success,required TResult Function( _ServerFailure value)  serverFailure,required TResult Function( _Failure value)  failure,required TResult Function( _CouponeFailure value)  couponeFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Success():
return success(_that);case _ServerFailure():
return serverFailure(_that);case _Failure():
return failure(_that);case _CouponeFailure():
return couponeFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Success value)?  success,TResult? Function( _ServerFailure value)?  serverFailure,TResult? Function( _Failure value)?  failure,TResult? Function( _CouponeFailure value)?  couponeFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Success() when success != null:
return success(_that);case _ServerFailure() when serverFailure != null:
return serverFailure(_that);case _Failure() when failure != null:
return failure(_that);case _CouponeFailure() when couponeFailure != null:
return couponeFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  loaded,TResult Function( String message)?  success,TResult Function( String message)?  serverFailure,TResult Function( String message)?  failure,TResult Function( String message)?  couponeFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded();case _Success() when success != null:
return success(_that.message);case _ServerFailure() when serverFailure != null:
return serverFailure(_that.message);case _Failure() when failure != null:
return failure(_that.message);case _CouponeFailure() when couponeFailure != null:
return couponeFailure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  loaded,required TResult Function( String message)  success,required TResult Function( String message)  serverFailure,required TResult Function( String message)  failure,required TResult Function( String message)  couponeFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded();case _Success():
return success(_that.message);case _ServerFailure():
return serverFailure(_that.message);case _Failure():
return failure(_that.message);case _CouponeFailure():
return couponeFailure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  loaded,TResult? Function( String message)?  success,TResult? Function( String message)?  serverFailure,TResult? Function( String message)?  failure,TResult? Function( String message)?  couponeFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded();case _Success() when success != null:
return success(_that.message);case _ServerFailure() when serverFailure != null:
return serverFailure(_that.message);case _Failure() when failure != null:
return failure(_that.message);case _CouponeFailure() when couponeFailure != null:
return couponeFailure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements CheckOutStatus {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckOutStatus.initial()';
}


}




/// @nodoc


class _Loading implements CheckOutStatus {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckOutStatus.loading()';
}


}




/// @nodoc


class _Loaded implements CheckOutStatus {
  const _Loaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckOutStatus.loaded()';
}


}




/// @nodoc


class _Success implements CheckOutStatus {
  const _Success(this.message);
  

 final  String message;

/// Create a copy of CheckOutStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CheckOutStatus.success(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $CheckOutStatusCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of CheckOutStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ServerFailure implements CheckOutStatus {
  const _ServerFailure(this.message);
  

 final  String message;

/// Create a copy of CheckOutStatus
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
  return 'CheckOutStatus.serverFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ServerFailureCopyWith<$Res> implements $CheckOutStatusCopyWith<$Res> {
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

/// Create a copy of CheckOutStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ServerFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Failure implements CheckOutStatus {
  const _Failure(this.message);
  

 final  String message;

/// Create a copy of CheckOutStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CheckOutStatus.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $CheckOutStatusCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of CheckOutStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Failure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CouponeFailure implements CheckOutStatus {
  const _CouponeFailure(this.message);
  

 final  String message;

/// Create a copy of CheckOutStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CouponeFailureCopyWith<_CouponeFailure> get copyWith => __$CouponeFailureCopyWithImpl<_CouponeFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CouponeFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CheckOutStatus.couponeFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$CouponeFailureCopyWith<$Res> implements $CheckOutStatusCopyWith<$Res> {
  factory _$CouponeFailureCopyWith(_CouponeFailure value, $Res Function(_CouponeFailure) _then) = __$CouponeFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$CouponeFailureCopyWithImpl<$Res>
    implements _$CouponeFailureCopyWith<$Res> {
  __$CouponeFailureCopyWithImpl(this._self, this._then);

  final _CouponeFailure _self;
  final $Res Function(_CouponeFailure) _then;

/// Create a copy of CheckOutStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_CouponeFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AddressStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressStatus()';
}


}

/// @nodoc
class $AddressStatusCopyWith<$Res>  {
$AddressStatusCopyWith(AddressStatus _, $Res Function(AddressStatus) __);
}


/// Adds pattern-matching-related methods to [AddressStatus].
extension AddressStatusPatterns on AddressStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AddressInitial value)?  initial,TResult Function( _AddressLoading value)?  loading,TResult Function( _AddressLoaded value)?  loaded,TResult Function( _AddressNoData value)?  noData,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressInitial() when initial != null:
return initial(_that);case _AddressLoading() when loading != null:
return loading(_that);case _AddressLoaded() when loaded != null:
return loaded(_that);case _AddressNoData() when noData != null:
return noData(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AddressInitial value)  initial,required TResult Function( _AddressLoading value)  loading,required TResult Function( _AddressLoaded value)  loaded,required TResult Function( _AddressNoData value)  noData,}){
final _that = this;
switch (_that) {
case _AddressInitial():
return initial(_that);case _AddressLoading():
return loading(_that);case _AddressLoaded():
return loaded(_that);case _AddressNoData():
return noData(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AddressInitial value)?  initial,TResult? Function( _AddressLoading value)?  loading,TResult? Function( _AddressLoaded value)?  loaded,TResult? Function( _AddressNoData value)?  noData,}){
final _that = this;
switch (_that) {
case _AddressInitial() when initial != null:
return initial(_that);case _AddressLoading() when loading != null:
return loading(_that);case _AddressLoaded() when loaded != null:
return loaded(_that);case _AddressNoData() when noData != null:
return noData(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  loaded,TResult Function( String message)?  noData,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressInitial() when initial != null:
return initial();case _AddressLoading() when loading != null:
return loading();case _AddressLoaded() when loaded != null:
return loaded();case _AddressNoData() when noData != null:
return noData(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  loaded,required TResult Function( String message)  noData,}) {final _that = this;
switch (_that) {
case _AddressInitial():
return initial();case _AddressLoading():
return loading();case _AddressLoaded():
return loaded();case _AddressNoData():
return noData(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  loaded,TResult? Function( String message)?  noData,}) {final _that = this;
switch (_that) {
case _AddressInitial() when initial != null:
return initial();case _AddressLoading() when loading != null:
return loading();case _AddressLoaded() when loaded != null:
return loaded();case _AddressNoData() when noData != null:
return noData(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _AddressInitial implements AddressStatus {
  const _AddressInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressStatus.initial()';
}


}




/// @nodoc


class _AddressLoading implements AddressStatus {
  const _AddressLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressStatus.loading()';
}


}




/// @nodoc


class _AddressLoaded implements AddressStatus {
  const _AddressLoaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressLoaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressStatus.loaded()';
}


}




/// @nodoc


class _AddressNoData implements AddressStatus {
  const _AddressNoData(this.message);
  

 final  String message;

/// Create a copy of AddressStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressNoDataCopyWith<_AddressNoData> get copyWith => __$AddressNoDataCopyWithImpl<_AddressNoData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressNoData&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AddressStatus.noData(message: $message)';
}


}

/// @nodoc
abstract mixin class _$AddressNoDataCopyWith<$Res> implements $AddressStatusCopyWith<$Res> {
  factory _$AddressNoDataCopyWith(_AddressNoData value, $Res Function(_AddressNoData) _then) = __$AddressNoDataCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$AddressNoDataCopyWithImpl<$Res>
    implements _$AddressNoDataCopyWith<$Res> {
  __$AddressNoDataCopyWithImpl(this._self, this._then);

  final _AddressNoData _self;
  final $Res Function(_AddressNoData) _then;

/// Create a copy of AddressStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_AddressNoData(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$CheckOutState {

 CheckOutStatus get status; AddressStatus get addressStatus; String? get paymentMethod; String? get deliveryType; String? get addressID; List<AddressModel> get addresses;
/// Create a copy of CheckOutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckOutStateCopyWith<CheckOutState> get copyWith => _$CheckOutStateCopyWithImpl<CheckOutState>(this as CheckOutState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckOutState&&(identical(other.status, status) || other.status == status)&&(identical(other.addressStatus, addressStatus) || other.addressStatus == addressStatus)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.deliveryType, deliveryType) || other.deliveryType == deliveryType)&&(identical(other.addressID, addressID) || other.addressID == addressID)&&const DeepCollectionEquality().equals(other.addresses, addresses));
}


@override
int get hashCode => Object.hash(runtimeType,status,addressStatus,paymentMethod,deliveryType,addressID,const DeepCollectionEquality().hash(addresses));

@override
String toString() {
  return 'CheckOutState(status: $status, addressStatus: $addressStatus, paymentMethod: $paymentMethod, deliveryType: $deliveryType, addressID: $addressID, addresses: $addresses)';
}


}

/// @nodoc
abstract mixin class $CheckOutStateCopyWith<$Res>  {
  factory $CheckOutStateCopyWith(CheckOutState value, $Res Function(CheckOutState) _then) = _$CheckOutStateCopyWithImpl;
@useResult
$Res call({
 CheckOutStatus status, AddressStatus addressStatus, String? paymentMethod, String? deliveryType, String? addressID, List<AddressModel> addresses
});


$CheckOutStatusCopyWith<$Res> get status;$AddressStatusCopyWith<$Res> get addressStatus;

}
/// @nodoc
class _$CheckOutStateCopyWithImpl<$Res>
    implements $CheckOutStateCopyWith<$Res> {
  _$CheckOutStateCopyWithImpl(this._self, this._then);

  final CheckOutState _self;
  final $Res Function(CheckOutState) _then;

/// Create a copy of CheckOutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? addressStatus = null,Object? paymentMethod = freezed,Object? deliveryType = freezed,Object? addressID = freezed,Object? addresses = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CheckOutStatus,addressStatus: null == addressStatus ? _self.addressStatus : addressStatus // ignore: cast_nullable_to_non_nullable
as AddressStatus,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,deliveryType: freezed == deliveryType ? _self.deliveryType : deliveryType // ignore: cast_nullable_to_non_nullable
as String?,addressID: freezed == addressID ? _self.addressID : addressID // ignore: cast_nullable_to_non_nullable
as String?,addresses: null == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<AddressModel>,
  ));
}
/// Create a copy of CheckOutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckOutStatusCopyWith<$Res> get status {
  
  return $CheckOutStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of CheckOutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressStatusCopyWith<$Res> get addressStatus {
  
  return $AddressStatusCopyWith<$Res>(_self.addressStatus, (value) {
    return _then(_self.copyWith(addressStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [CheckOutState].
extension CheckOutStatePatterns on CheckOutState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckOutState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckOutState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckOutState value)  $default,){
final _that = this;
switch (_that) {
case _CheckOutState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckOutState value)?  $default,){
final _that = this;
switch (_that) {
case _CheckOutState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CheckOutStatus status,  AddressStatus addressStatus,  String? paymentMethod,  String? deliveryType,  String? addressID,  List<AddressModel> addresses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckOutState() when $default != null:
return $default(_that.status,_that.addressStatus,_that.paymentMethod,_that.deliveryType,_that.addressID,_that.addresses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CheckOutStatus status,  AddressStatus addressStatus,  String? paymentMethod,  String? deliveryType,  String? addressID,  List<AddressModel> addresses)  $default,) {final _that = this;
switch (_that) {
case _CheckOutState():
return $default(_that.status,_that.addressStatus,_that.paymentMethod,_that.deliveryType,_that.addressID,_that.addresses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CheckOutStatus status,  AddressStatus addressStatus,  String? paymentMethod,  String? deliveryType,  String? addressID,  List<AddressModel> addresses)?  $default,) {final _that = this;
switch (_that) {
case _CheckOutState() when $default != null:
return $default(_that.status,_that.addressStatus,_that.paymentMethod,_that.deliveryType,_that.addressID,_that.addresses);case _:
  return null;

}
}

}

/// @nodoc


class _CheckOutState implements CheckOutState {
  const _CheckOutState({this.status = const CheckOutStatus.initial(), this.addressStatus = const AddressStatus.initial(), this.paymentMethod, this.deliveryType, this.addressID, final  List<AddressModel> addresses = const []}): _addresses = addresses;
  

@override@JsonKey() final  CheckOutStatus status;
@override@JsonKey() final  AddressStatus addressStatus;
@override final  String? paymentMethod;
@override final  String? deliveryType;
@override final  String? addressID;
 final  List<AddressModel> _addresses;
@override@JsonKey() List<AddressModel> get addresses {
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addresses);
}


/// Create a copy of CheckOutState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckOutStateCopyWith<_CheckOutState> get copyWith => __$CheckOutStateCopyWithImpl<_CheckOutState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckOutState&&(identical(other.status, status) || other.status == status)&&(identical(other.addressStatus, addressStatus) || other.addressStatus == addressStatus)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.deliveryType, deliveryType) || other.deliveryType == deliveryType)&&(identical(other.addressID, addressID) || other.addressID == addressID)&&const DeepCollectionEquality().equals(other._addresses, _addresses));
}


@override
int get hashCode => Object.hash(runtimeType,status,addressStatus,paymentMethod,deliveryType,addressID,const DeepCollectionEquality().hash(_addresses));

@override
String toString() {
  return 'CheckOutState(status: $status, addressStatus: $addressStatus, paymentMethod: $paymentMethod, deliveryType: $deliveryType, addressID: $addressID, addresses: $addresses)';
}


}

/// @nodoc
abstract mixin class _$CheckOutStateCopyWith<$Res> implements $CheckOutStateCopyWith<$Res> {
  factory _$CheckOutStateCopyWith(_CheckOutState value, $Res Function(_CheckOutState) _then) = __$CheckOutStateCopyWithImpl;
@override @useResult
$Res call({
 CheckOutStatus status, AddressStatus addressStatus, String? paymentMethod, String? deliveryType, String? addressID, List<AddressModel> addresses
});


@override $CheckOutStatusCopyWith<$Res> get status;@override $AddressStatusCopyWith<$Res> get addressStatus;

}
/// @nodoc
class __$CheckOutStateCopyWithImpl<$Res>
    implements _$CheckOutStateCopyWith<$Res> {
  __$CheckOutStateCopyWithImpl(this._self, this._then);

  final _CheckOutState _self;
  final $Res Function(_CheckOutState) _then;

/// Create a copy of CheckOutState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? addressStatus = null,Object? paymentMethod = freezed,Object? deliveryType = freezed,Object? addressID = freezed,Object? addresses = null,}) {
  return _then(_CheckOutState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CheckOutStatus,addressStatus: null == addressStatus ? _self.addressStatus : addressStatus // ignore: cast_nullable_to_non_nullable
as AddressStatus,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,deliveryType: freezed == deliveryType ? _self.deliveryType : deliveryType // ignore: cast_nullable_to_non_nullable
as String?,addressID: freezed == addressID ? _self.addressID : addressID // ignore: cast_nullable_to_non_nullable
as String?,addresses: null == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<AddressModel>,
  ));
}

/// Create a copy of CheckOutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckOutStatusCopyWith<$Res> get status {
  
  return $CheckOutStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of CheckOutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressStatusCopyWith<$Res> get addressStatus {
  
  return $AddressStatusCopyWith<$Res>(_self.addressStatus, (value) {
    return _then(_self.copyWith(addressStatus: value));
  });
}
}

// dart format on
