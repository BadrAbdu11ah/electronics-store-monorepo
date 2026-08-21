// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracking_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TrackingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrackingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrackingEvent()';
}


}

/// @nodoc
class $TrackingEventCopyWith<$Res>  {
$TrackingEventCopyWith(TrackingEvent _, $Res Function(TrackingEvent) __);
}


/// Adds pattern-matching-related methods to [TrackingEvent].
extension TrackingEventPatterns on TrackingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _TrackingStarted value)?  started,TResult Function( _GetCurrentLocation value)?  getCurrentLocation,TResult Function( _LocationDelivery value)?  locationDelivery,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrackingStarted() when started != null:
return started(_that);case _GetCurrentLocation() when getCurrentLocation != null:
return getCurrentLocation(_that);case _LocationDelivery() when locationDelivery != null:
return locationDelivery(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _TrackingStarted value)  started,required TResult Function( _GetCurrentLocation value)  getCurrentLocation,required TResult Function( _LocationDelivery value)  locationDelivery,}){
final _that = this;
switch (_that) {
case _TrackingStarted():
return started(_that);case _GetCurrentLocation():
return getCurrentLocation(_that);case _LocationDelivery():
return locationDelivery(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _TrackingStarted value)?  started,TResult? Function( _GetCurrentLocation value)?  getCurrentLocation,TResult? Function( _LocationDelivery value)?  locationDelivery,}){
final _that = this;
switch (_that) {
case _TrackingStarted() when started != null:
return started(_that);case _GetCurrentLocation() when getCurrentLocation != null:
return getCurrentLocation(_that);case _LocationDelivery() when locationDelivery != null:
return locationDelivery(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( OrderModel order)?  started,TResult Function()?  getCurrentLocation,TResult Function()?  locationDelivery,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrackingStarted() when started != null:
return started(_that.order);case _GetCurrentLocation() when getCurrentLocation != null:
return getCurrentLocation();case _LocationDelivery() when locationDelivery != null:
return locationDelivery();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( OrderModel order)  started,required TResult Function()  getCurrentLocation,required TResult Function()  locationDelivery,}) {final _that = this;
switch (_that) {
case _TrackingStarted():
return started(_that.order);case _GetCurrentLocation():
return getCurrentLocation();case _LocationDelivery():
return locationDelivery();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( OrderModel order)?  started,TResult? Function()?  getCurrentLocation,TResult? Function()?  locationDelivery,}) {final _that = this;
switch (_that) {
case _TrackingStarted() when started != null:
return started(_that.order);case _GetCurrentLocation() when getCurrentLocation != null:
return getCurrentLocation();case _LocationDelivery() when locationDelivery != null:
return locationDelivery();case _:
  return null;

}
}

}

/// @nodoc


class _TrackingStarted implements TrackingEvent {
  const _TrackingStarted({required this.order});
  

 final  OrderModel order;

/// Create a copy of TrackingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrackingStartedCopyWith<_TrackingStarted> get copyWith => __$TrackingStartedCopyWithImpl<_TrackingStarted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrackingStarted&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,order);

@override
String toString() {
  return 'TrackingEvent.started(order: $order)';
}


}

/// @nodoc
abstract mixin class _$TrackingStartedCopyWith<$Res> implements $TrackingEventCopyWith<$Res> {
  factory _$TrackingStartedCopyWith(_TrackingStarted value, $Res Function(_TrackingStarted) _then) = __$TrackingStartedCopyWithImpl;
@useResult
$Res call({
 OrderModel order
});


$OrderModelCopyWith<$Res> get order;

}
/// @nodoc
class __$TrackingStartedCopyWithImpl<$Res>
    implements _$TrackingStartedCopyWith<$Res> {
  __$TrackingStartedCopyWithImpl(this._self, this._then);

  final _TrackingStarted _self;
  final $Res Function(_TrackingStarted) _then;

/// Create a copy of TrackingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? order = null,}) {
  return _then(_TrackingStarted(
order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as OrderModel,
  ));
}

/// Create a copy of TrackingEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderModelCopyWith<$Res> get order {
  
  return $OrderModelCopyWith<$Res>(_self.order, (value) {
    return _then(_self.copyWith(order: value));
  });
}
}

/// @nodoc


class _GetCurrentLocation implements TrackingEvent {
  const _GetCurrentLocation();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCurrentLocation);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrackingEvent.getCurrentLocation()';
}


}




/// @nodoc


class _LocationDelivery implements TrackingEvent {
  const _LocationDelivery();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationDelivery);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrackingEvent.locationDelivery()';
}


}




/// @nodoc
mixin _$TrackingStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrackingStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrackingStatus()';
}


}

/// @nodoc
class $TrackingStatusCopyWith<$Res>  {
$TrackingStatusCopyWith(TrackingStatus _, $Res Function(TrackingStatus) __);
}


/// Adds pattern-matching-related methods to [TrackingStatus].
extension TrackingStatusPatterns on TrackingStatus {
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


class _Initial implements TrackingStatus {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrackingStatus.initial()';
}


}




/// @nodoc


class _Loading implements TrackingStatus {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrackingStatus.loading()';
}


}




/// @nodoc


class _Loaded implements TrackingStatus {
  const _Loaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrackingStatus.loaded()';
}


}




/// @nodoc


class _ServerFailure implements TrackingStatus {
  const _ServerFailure(this.message);
  

 final  String message;

/// Create a copy of TrackingStatus
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
  return 'TrackingStatus.serverFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ServerFailureCopyWith<$Res> implements $TrackingStatusCopyWith<$Res> {
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

/// Create a copy of TrackingStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ServerFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TrackingState {

 TrackingStatus get status; OrderModel? get order; double? get destLat; double? get destLong;
/// Create a copy of TrackingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrackingStateCopyWith<TrackingState> get copyWith => _$TrackingStateCopyWithImpl<TrackingState>(this as TrackingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrackingState&&(identical(other.status, status) || other.status == status)&&(identical(other.order, order) || other.order == order)&&(identical(other.destLat, destLat) || other.destLat == destLat)&&(identical(other.destLong, destLong) || other.destLong == destLong));
}


@override
int get hashCode => Object.hash(runtimeType,status,order,destLat,destLong);

@override
String toString() {
  return 'TrackingState(status: $status, order: $order, destLat: $destLat, destLong: $destLong)';
}


}

/// @nodoc
abstract mixin class $TrackingStateCopyWith<$Res>  {
  factory $TrackingStateCopyWith(TrackingState value, $Res Function(TrackingState) _then) = _$TrackingStateCopyWithImpl;
@useResult
$Res call({
 TrackingStatus status, OrderModel? order, double? destLat, double? destLong
});


$TrackingStatusCopyWith<$Res> get status;$OrderModelCopyWith<$Res>? get order;

}
/// @nodoc
class _$TrackingStateCopyWithImpl<$Res>
    implements $TrackingStateCopyWith<$Res> {
  _$TrackingStateCopyWithImpl(this._self, this._then);

  final TrackingState _self;
  final $Res Function(TrackingState) _then;

/// Create a copy of TrackingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? order = freezed,Object? destLat = freezed,Object? destLong = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TrackingStatus,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as OrderModel?,destLat: freezed == destLat ? _self.destLat : destLat // ignore: cast_nullable_to_non_nullable
as double?,destLong: freezed == destLong ? _self.destLong : destLong // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of TrackingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrackingStatusCopyWith<$Res> get status {
  
  return $TrackingStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of TrackingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderModelCopyWith<$Res>? get order {
    if (_self.order == null) {
    return null;
  }

  return $OrderModelCopyWith<$Res>(_self.order!, (value) {
    return _then(_self.copyWith(order: value));
  });
}
}


/// Adds pattern-matching-related methods to [TrackingState].
extension TrackingStatePatterns on TrackingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrackingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrackingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrackingState value)  $default,){
final _that = this;
switch (_that) {
case _TrackingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrackingState value)?  $default,){
final _that = this;
switch (_that) {
case _TrackingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TrackingStatus status,  OrderModel? order,  double? destLat,  double? destLong)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrackingState() when $default != null:
return $default(_that.status,_that.order,_that.destLat,_that.destLong);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TrackingStatus status,  OrderModel? order,  double? destLat,  double? destLong)  $default,) {final _that = this;
switch (_that) {
case _TrackingState():
return $default(_that.status,_that.order,_that.destLat,_that.destLong);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TrackingStatus status,  OrderModel? order,  double? destLat,  double? destLong)?  $default,) {final _that = this;
switch (_that) {
case _TrackingState() when $default != null:
return $default(_that.status,_that.order,_that.destLat,_that.destLong);case _:
  return null;

}
}

}

/// @nodoc


class _TrackingState implements TrackingState {
  const _TrackingState({this.status = const TrackingStatus.initial(), this.order, this.destLat, this.destLong});
  

@override@JsonKey() final  TrackingStatus status;
@override final  OrderModel? order;
@override final  double? destLat;
@override final  double? destLong;

/// Create a copy of TrackingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrackingStateCopyWith<_TrackingState> get copyWith => __$TrackingStateCopyWithImpl<_TrackingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrackingState&&(identical(other.status, status) || other.status == status)&&(identical(other.order, order) || other.order == order)&&(identical(other.destLat, destLat) || other.destLat == destLat)&&(identical(other.destLong, destLong) || other.destLong == destLong));
}


@override
int get hashCode => Object.hash(runtimeType,status,order,destLat,destLong);

@override
String toString() {
  return 'TrackingState(status: $status, order: $order, destLat: $destLat, destLong: $destLong)';
}


}

/// @nodoc
abstract mixin class _$TrackingStateCopyWith<$Res> implements $TrackingStateCopyWith<$Res> {
  factory _$TrackingStateCopyWith(_TrackingState value, $Res Function(_TrackingState) _then) = __$TrackingStateCopyWithImpl;
@override @useResult
$Res call({
 TrackingStatus status, OrderModel? order, double? destLat, double? destLong
});


@override $TrackingStatusCopyWith<$Res> get status;@override $OrderModelCopyWith<$Res>? get order;

}
/// @nodoc
class __$TrackingStateCopyWithImpl<$Res>
    implements _$TrackingStateCopyWith<$Res> {
  __$TrackingStateCopyWithImpl(this._self, this._then);

  final _TrackingState _self;
  final $Res Function(_TrackingState) _then;

/// Create a copy of TrackingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? order = freezed,Object? destLat = freezed,Object? destLong = freezed,}) {
  return _then(_TrackingState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TrackingStatus,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as OrderModel?,destLat: freezed == destLat ? _self.destLat : destLat // ignore: cast_nullable_to_non_nullable
as double?,destLong: freezed == destLong ? _self.destLong : destLong // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of TrackingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrackingStatusCopyWith<$Res> get status {
  
  return $TrackingStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of TrackingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderModelCopyWith<$Res>? get order {
    if (_self.order == null) {
    return null;
  }

  return $OrderModelCopyWith<$Res>(_self.order!, (value) {
    return _then(_self.copyWith(order: value));
  });
}
}

// dart format on
