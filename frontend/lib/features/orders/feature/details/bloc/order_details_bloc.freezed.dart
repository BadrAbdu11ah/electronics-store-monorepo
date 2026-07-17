// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderDetailsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderDetailsEvent()';
}


}

/// @nodoc
class $OrderDetailsEventCopyWith<$Res>  {
$OrderDetailsEventCopyWith(OrderDetailsEvent _, $Res Function(OrderDetailsEvent) __);
}


/// Adds pattern-matching-related methods to [OrderDetailsEvent].
extension OrderDetailsEventPatterns on OrderDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _LoadOrderDetails value)?  loadOrderDetails,TResult Function( _GetCurrentPositionApp value)?  getCurrentPositionApp,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadOrderDetails() when loadOrderDetails != null:
return loadOrderDetails(_that);case _GetCurrentPositionApp() when getCurrentPositionApp != null:
return getCurrentPositionApp(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _LoadOrderDetails value)  loadOrderDetails,required TResult Function( _GetCurrentPositionApp value)  getCurrentPositionApp,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _LoadOrderDetails():
return loadOrderDetails(_that);case _GetCurrentPositionApp():
return getCurrentPositionApp(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _LoadOrderDetails value)?  loadOrderDetails,TResult? Function( _GetCurrentPositionApp value)?  getCurrentPositionApp,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadOrderDetails() when loadOrderDetails != null:
return loadOrderDetails(_that);case _GetCurrentPositionApp() when getCurrentPositionApp != null:
return getCurrentPositionApp(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( OrderModel orderModel)?  started,TResult Function( OrderModel orderModel)?  loadOrderDetails,TResult Function()?  getCurrentPositionApp,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.orderModel);case _LoadOrderDetails() when loadOrderDetails != null:
return loadOrderDetails(_that.orderModel);case _GetCurrentPositionApp() when getCurrentPositionApp != null:
return getCurrentPositionApp();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( OrderModel orderModel)  started,required TResult Function( OrderModel orderModel)  loadOrderDetails,required TResult Function()  getCurrentPositionApp,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.orderModel);case _LoadOrderDetails():
return loadOrderDetails(_that.orderModel);case _GetCurrentPositionApp():
return getCurrentPositionApp();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( OrderModel orderModel)?  started,TResult? Function( OrderModel orderModel)?  loadOrderDetails,TResult? Function()?  getCurrentPositionApp,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.orderModel);case _LoadOrderDetails() when loadOrderDetails != null:
return loadOrderDetails(_that.orderModel);case _GetCurrentPositionApp() when getCurrentPositionApp != null:
return getCurrentPositionApp();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements OrderDetailsEvent {
  const _Started({required this.orderModel});
  

 final  OrderModel orderModel;

/// Create a copy of OrderDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.orderModel, orderModel) || other.orderModel == orderModel));
}


@override
int get hashCode => Object.hash(runtimeType,orderModel);

@override
String toString() {
  return 'OrderDetailsEvent.started(orderModel: $orderModel)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $OrderDetailsEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@useResult
$Res call({
 OrderModel orderModel
});


$OrderModelCopyWith<$Res> get orderModel;

}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of OrderDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? orderModel = null,}) {
  return _then(_Started(
orderModel: null == orderModel ? _self.orderModel : orderModel // ignore: cast_nullable_to_non_nullable
as OrderModel,
  ));
}

/// Create a copy of OrderDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderModelCopyWith<$Res> get orderModel {
  
  return $OrderModelCopyWith<$Res>(_self.orderModel, (value) {
    return _then(_self.copyWith(orderModel: value));
  });
}
}

/// @nodoc


class _LoadOrderDetails implements OrderDetailsEvent {
  const _LoadOrderDetails({required this.orderModel});
  

 final  OrderModel orderModel;

/// Create a copy of OrderDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadOrderDetailsCopyWith<_LoadOrderDetails> get copyWith => __$LoadOrderDetailsCopyWithImpl<_LoadOrderDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadOrderDetails&&(identical(other.orderModel, orderModel) || other.orderModel == orderModel));
}


@override
int get hashCode => Object.hash(runtimeType,orderModel);

@override
String toString() {
  return 'OrderDetailsEvent.loadOrderDetails(orderModel: $orderModel)';
}


}

/// @nodoc
abstract mixin class _$LoadOrderDetailsCopyWith<$Res> implements $OrderDetailsEventCopyWith<$Res> {
  factory _$LoadOrderDetailsCopyWith(_LoadOrderDetails value, $Res Function(_LoadOrderDetails) _then) = __$LoadOrderDetailsCopyWithImpl;
@useResult
$Res call({
 OrderModel orderModel
});


$OrderModelCopyWith<$Res> get orderModel;

}
/// @nodoc
class __$LoadOrderDetailsCopyWithImpl<$Res>
    implements _$LoadOrderDetailsCopyWith<$Res> {
  __$LoadOrderDetailsCopyWithImpl(this._self, this._then);

  final _LoadOrderDetails _self;
  final $Res Function(_LoadOrderDetails) _then;

/// Create a copy of OrderDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? orderModel = null,}) {
  return _then(_LoadOrderDetails(
orderModel: null == orderModel ? _self.orderModel : orderModel // ignore: cast_nullable_to_non_nullable
as OrderModel,
  ));
}

/// Create a copy of OrderDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderModelCopyWith<$Res> get orderModel {
  
  return $OrderModelCopyWith<$Res>(_self.orderModel, (value) {
    return _then(_self.copyWith(orderModel: value));
  });
}
}

/// @nodoc


class _GetCurrentPositionApp implements OrderDetailsEvent {
  const _GetCurrentPositionApp();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCurrentPositionApp);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderDetailsEvent.getCurrentPositionApp()';
}


}




/// @nodoc
mixin _$OrderDetailsStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailsStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderDetailsStatus()';
}


}

/// @nodoc
class $OrderDetailsStatusCopyWith<$Res>  {
$OrderDetailsStatusCopyWith(OrderDetailsStatus _, $Res Function(OrderDetailsStatus) __);
}


/// Adds pattern-matching-related methods to [OrderDetailsStatus].
extension OrderDetailsStatusPatterns on OrderDetailsStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _ServerFailure value)?  serverFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _ServerFailure() when serverFailure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _ServerFailure value)  serverFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _ServerFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _ServerFailure value)?  serverFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _ServerFailure() when serverFailure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  loaded,TResult Function( String message)?  serverFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded();case _ServerFailure() when serverFailure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  loaded,required TResult Function( String message)  serverFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded();case _ServerFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  loaded,TResult? Function( String message)?  serverFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded();case _ServerFailure() when serverFailure != null:
return serverFailure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements OrderDetailsStatus {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderDetailsStatus.initial()';
}


}




/// @nodoc


class _Loading implements OrderDetailsStatus {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderDetailsStatus.loading()';
}


}




/// @nodoc


class _Loaded implements OrderDetailsStatus {
  const _Loaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderDetailsStatus.loaded()';
}


}




/// @nodoc


class _ServerFailure implements OrderDetailsStatus {
  const _ServerFailure(this.message);
  

 final  String message;

/// Create a copy of OrderDetailsStatus
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
  return 'OrderDetailsStatus.serverFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ServerFailureCopyWith<$Res> implements $OrderDetailsStatusCopyWith<$Res> {
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

/// Create a copy of OrderDetailsStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ServerFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$LocationStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocationStatus()';
}


}

/// @nodoc
class $LocationStatusCopyWith<$Res>  {
$LocationStatusCopyWith(LocationStatus _, $Res Function(LocationStatus) __);
}


/// Adds pattern-matching-related methods to [LocationStatus].
extension LocationStatusPatterns on LocationStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LocationInitial value)?  initial,TResult Function( _LocationLoading value)?  loading,TResult Function( _LocationLoaded value)?  loaded,TResult Function( _LocationServerFailure value)?  serverFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationInitial() when initial != null:
return initial(_that);case _LocationLoading() when loading != null:
return loading(_that);case _LocationLoaded() when loaded != null:
return loaded(_that);case _LocationServerFailure() when serverFailure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LocationInitial value)  initial,required TResult Function( _LocationLoading value)  loading,required TResult Function( _LocationLoaded value)  loaded,required TResult Function( _LocationServerFailure value)  serverFailure,}){
final _that = this;
switch (_that) {
case _LocationInitial():
return initial(_that);case _LocationLoading():
return loading(_that);case _LocationLoaded():
return loaded(_that);case _LocationServerFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LocationInitial value)?  initial,TResult? Function( _LocationLoading value)?  loading,TResult? Function( _LocationLoaded value)?  loaded,TResult? Function( _LocationServerFailure value)?  serverFailure,}){
final _that = this;
switch (_that) {
case _LocationInitial() when initial != null:
return initial(_that);case _LocationLoading() when loading != null:
return loading(_that);case _LocationLoaded() when loaded != null:
return loaded(_that);case _LocationServerFailure() when serverFailure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  loaded,TResult Function( String message)?  serverFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationInitial() when initial != null:
return initial();case _LocationLoading() when loading != null:
return loading();case _LocationLoaded() when loaded != null:
return loaded();case _LocationServerFailure() when serverFailure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  loaded,required TResult Function( String message)  serverFailure,}) {final _that = this;
switch (_that) {
case _LocationInitial():
return initial();case _LocationLoading():
return loading();case _LocationLoaded():
return loaded();case _LocationServerFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  loaded,TResult? Function( String message)?  serverFailure,}) {final _that = this;
switch (_that) {
case _LocationInitial() when initial != null:
return initial();case _LocationLoading() when loading != null:
return loading();case _LocationLoaded() when loaded != null:
return loaded();case _LocationServerFailure() when serverFailure != null:
return serverFailure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _LocationInitial implements LocationStatus {
  const _LocationInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocationStatus.initial()';
}


}




/// @nodoc


class _LocationLoading implements LocationStatus {
  const _LocationLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocationStatus.loading()';
}


}




/// @nodoc


class _LocationLoaded implements LocationStatus {
  const _LocationLoaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationLoaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocationStatus.loaded()';
}


}




/// @nodoc


class _LocationServerFailure implements LocationStatus {
  const _LocationServerFailure(this.message);
  

 final  String message;

/// Create a copy of LocationStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationServerFailureCopyWith<_LocationServerFailure> get copyWith => __$LocationServerFailureCopyWithImpl<_LocationServerFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationServerFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LocationStatus.serverFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$LocationServerFailureCopyWith<$Res> implements $LocationStatusCopyWith<$Res> {
  factory _$LocationServerFailureCopyWith(_LocationServerFailure value, $Res Function(_LocationServerFailure) _then) = __$LocationServerFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$LocationServerFailureCopyWithImpl<$Res>
    implements _$LocationServerFailureCopyWith<$Res> {
  __$LocationServerFailureCopyWithImpl(this._self, this._then);

  final _LocationServerFailure _self;
  final $Res Function(_LocationServerFailure) _then;

/// Create a copy of LocationStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_LocationServerFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$OrderDetailsState {

 OrderDetailsStatus get status; LocationStatus get locationStatus; List<CartModel> get cartItems; OrderModel get order; AddressModel? get addressModel; Position? get position; double? get lat; double? get long; String get lang;
/// Create a copy of OrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailsStateCopyWith<OrderDetailsState> get copyWith => _$OrderDetailsStateCopyWithImpl<OrderDetailsState>(this as OrderDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.locationStatus, locationStatus) || other.locationStatus == locationStatus)&&const DeepCollectionEquality().equals(other.cartItems, cartItems)&&(identical(other.order, order) || other.order == order)&&(identical(other.addressModel, addressModel) || other.addressModel == addressModel)&&(identical(other.position, position) || other.position == position)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.long, long) || other.long == long)&&(identical(other.lang, lang) || other.lang == lang));
}


@override
int get hashCode => Object.hash(runtimeType,status,locationStatus,const DeepCollectionEquality().hash(cartItems),order,addressModel,position,lat,long,lang);

@override
String toString() {
  return 'OrderDetailsState(status: $status, locationStatus: $locationStatus, cartItems: $cartItems, order: $order, addressModel: $addressModel, position: $position, lat: $lat, long: $long, lang: $lang)';
}


}

/// @nodoc
abstract mixin class $OrderDetailsStateCopyWith<$Res>  {
  factory $OrderDetailsStateCopyWith(OrderDetailsState value, $Res Function(OrderDetailsState) _then) = _$OrderDetailsStateCopyWithImpl;
@useResult
$Res call({
 OrderDetailsStatus status, LocationStatus locationStatus, List<CartModel> cartItems, OrderModel order, AddressModel? addressModel, Position? position, double? lat, double? long, String lang
});


$OrderDetailsStatusCopyWith<$Res> get status;$LocationStatusCopyWith<$Res> get locationStatus;$OrderModelCopyWith<$Res> get order;$AddressModelCopyWith<$Res>? get addressModel;

}
/// @nodoc
class _$OrderDetailsStateCopyWithImpl<$Res>
    implements $OrderDetailsStateCopyWith<$Res> {
  _$OrderDetailsStateCopyWithImpl(this._self, this._then);

  final OrderDetailsState _self;
  final $Res Function(OrderDetailsState) _then;

/// Create a copy of OrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? locationStatus = null,Object? cartItems = null,Object? order = null,Object? addressModel = freezed,Object? position = freezed,Object? lat = freezed,Object? long = freezed,Object? lang = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderDetailsStatus,locationStatus: null == locationStatus ? _self.locationStatus : locationStatus // ignore: cast_nullable_to_non_nullable
as LocationStatus,cartItems: null == cartItems ? _self.cartItems : cartItems // ignore: cast_nullable_to_non_nullable
as List<CartModel>,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as OrderModel,addressModel: freezed == addressModel ? _self.addressModel : addressModel // ignore: cast_nullable_to_non_nullable
as AddressModel?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as Position?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,long: freezed == long ? _self.long : long // ignore: cast_nullable_to_non_nullable
as double?,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of OrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderDetailsStatusCopyWith<$Res> get status {
  
  return $OrderDetailsStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of OrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationStatusCopyWith<$Res> get locationStatus {
  
  return $LocationStatusCopyWith<$Res>(_self.locationStatus, (value) {
    return _then(_self.copyWith(locationStatus: value));
  });
}/// Create a copy of OrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderModelCopyWith<$Res> get order {
  
  return $OrderModelCopyWith<$Res>(_self.order, (value) {
    return _then(_self.copyWith(order: value));
  });
}/// Create a copy of OrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressModelCopyWith<$Res>? get addressModel {
    if (_self.addressModel == null) {
    return null;
  }

  return $AddressModelCopyWith<$Res>(_self.addressModel!, (value) {
    return _then(_self.copyWith(addressModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderDetailsState].
extension OrderDetailsStatePatterns on OrderDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _OrderDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OrderDetailsStatus status,  LocationStatus locationStatus,  List<CartModel> cartItems,  OrderModel order,  AddressModel? addressModel,  Position? position,  double? lat,  double? long,  String lang)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDetailsState() when $default != null:
return $default(_that.status,_that.locationStatus,_that.cartItems,_that.order,_that.addressModel,_that.position,_that.lat,_that.long,_that.lang);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OrderDetailsStatus status,  LocationStatus locationStatus,  List<CartModel> cartItems,  OrderModel order,  AddressModel? addressModel,  Position? position,  double? lat,  double? long,  String lang)  $default,) {final _that = this;
switch (_that) {
case _OrderDetailsState():
return $default(_that.status,_that.locationStatus,_that.cartItems,_that.order,_that.addressModel,_that.position,_that.lat,_that.long,_that.lang);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OrderDetailsStatus status,  LocationStatus locationStatus,  List<CartModel> cartItems,  OrderModel order,  AddressModel? addressModel,  Position? position,  double? lat,  double? long,  String lang)?  $default,) {final _that = this;
switch (_that) {
case _OrderDetailsState() when $default != null:
return $default(_that.status,_that.locationStatus,_that.cartItems,_that.order,_that.addressModel,_that.position,_that.lat,_that.long,_that.lang);case _:
  return null;

}
}

}

/// @nodoc


class _OrderDetailsState implements OrderDetailsState {
  const _OrderDetailsState({this.status = const OrderDetailsStatus.initial(), this.locationStatus = const LocationStatus.initial(), final  List<CartModel> cartItems = const [], this.order = const OrderModel(), this.addressModel, this.position, this.lat, this.long, this.lang = 'en'}): _cartItems = cartItems;
  

@override@JsonKey() final  OrderDetailsStatus status;
@override@JsonKey() final  LocationStatus locationStatus;
 final  List<CartModel> _cartItems;
@override@JsonKey() List<CartModel> get cartItems {
  if (_cartItems is EqualUnmodifiableListView) return _cartItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cartItems);
}

@override@JsonKey() final  OrderModel order;
@override final  AddressModel? addressModel;
@override final  Position? position;
@override final  double? lat;
@override final  double? long;
@override@JsonKey() final  String lang;

/// Create a copy of OrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDetailsStateCopyWith<_OrderDetailsState> get copyWith => __$OrderDetailsStateCopyWithImpl<_OrderDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.locationStatus, locationStatus) || other.locationStatus == locationStatus)&&const DeepCollectionEquality().equals(other._cartItems, _cartItems)&&(identical(other.order, order) || other.order == order)&&(identical(other.addressModel, addressModel) || other.addressModel == addressModel)&&(identical(other.position, position) || other.position == position)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.long, long) || other.long == long)&&(identical(other.lang, lang) || other.lang == lang));
}


@override
int get hashCode => Object.hash(runtimeType,status,locationStatus,const DeepCollectionEquality().hash(_cartItems),order,addressModel,position,lat,long,lang);

@override
String toString() {
  return 'OrderDetailsState(status: $status, locationStatus: $locationStatus, cartItems: $cartItems, order: $order, addressModel: $addressModel, position: $position, lat: $lat, long: $long, lang: $lang)';
}


}

/// @nodoc
abstract mixin class _$OrderDetailsStateCopyWith<$Res> implements $OrderDetailsStateCopyWith<$Res> {
  factory _$OrderDetailsStateCopyWith(_OrderDetailsState value, $Res Function(_OrderDetailsState) _then) = __$OrderDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 OrderDetailsStatus status, LocationStatus locationStatus, List<CartModel> cartItems, OrderModel order, AddressModel? addressModel, Position? position, double? lat, double? long, String lang
});


@override $OrderDetailsStatusCopyWith<$Res> get status;@override $LocationStatusCopyWith<$Res> get locationStatus;@override $OrderModelCopyWith<$Res> get order;@override $AddressModelCopyWith<$Res>? get addressModel;

}
/// @nodoc
class __$OrderDetailsStateCopyWithImpl<$Res>
    implements _$OrderDetailsStateCopyWith<$Res> {
  __$OrderDetailsStateCopyWithImpl(this._self, this._then);

  final _OrderDetailsState _self;
  final $Res Function(_OrderDetailsState) _then;

/// Create a copy of OrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? locationStatus = null,Object? cartItems = null,Object? order = null,Object? addressModel = freezed,Object? position = freezed,Object? lat = freezed,Object? long = freezed,Object? lang = null,}) {
  return _then(_OrderDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderDetailsStatus,locationStatus: null == locationStatus ? _self.locationStatus : locationStatus // ignore: cast_nullable_to_non_nullable
as LocationStatus,cartItems: null == cartItems ? _self._cartItems : cartItems // ignore: cast_nullable_to_non_nullable
as List<CartModel>,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as OrderModel,addressModel: freezed == addressModel ? _self.addressModel : addressModel // ignore: cast_nullable_to_non_nullable
as AddressModel?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as Position?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,long: freezed == long ? _self.long : long // ignore: cast_nullable_to_non_nullable
as double?,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of OrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderDetailsStatusCopyWith<$Res> get status {
  
  return $OrderDetailsStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of OrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationStatusCopyWith<$Res> get locationStatus {
  
  return $LocationStatusCopyWith<$Res>(_self.locationStatus, (value) {
    return _then(_self.copyWith(locationStatus: value));
  });
}/// Create a copy of OrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderModelCopyWith<$Res> get order {
  
  return $OrderModelCopyWith<$Res>(_self.order, (value) {
    return _then(_self.copyWith(order: value));
  });
}/// Create a copy of OrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressModelCopyWith<$Res>? get addressModel {
    if (_self.addressModel == null) {
    return null;
  }

  return $AddressModelCopyWith<$Res>(_self.addressModel!, (value) {
    return _then(_self.copyWith(addressModel: value));
  });
}
}

// dart format on
