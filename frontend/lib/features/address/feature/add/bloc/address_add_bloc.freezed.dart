// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_add_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddressAddEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressAddEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressAddEvent()';
}


}

/// @nodoc
class $AddressAddEventCopyWith<$Res>  {
$AddressAddEventCopyWith(AddressAddEvent _, $Res Function(AddressAddEvent) __);
}


/// Adds pattern-matching-related methods to [AddressAddEvent].
extension AddressAddEventPatterns on AddressAddEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _LoadCurrentPositionApp value)?  loadCurrentPositionApp,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadCurrentPositionApp() when loadCurrentPositionApp != null:
return loadCurrentPositionApp(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _LoadCurrentPositionApp value)  loadCurrentPositionApp,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _LoadCurrentPositionApp():
return loadCurrentPositionApp(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _LoadCurrentPositionApp value)?  loadCurrentPositionApp,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadCurrentPositionApp() when loadCurrentPositionApp != null:
return loadCurrentPositionApp(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  loadCurrentPositionApp,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadCurrentPositionApp() when loadCurrentPositionApp != null:
return loadCurrentPositionApp();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  loadCurrentPositionApp,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _LoadCurrentPositionApp():
return loadCurrentPositionApp();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  loadCurrentPositionApp,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadCurrentPositionApp() when loadCurrentPositionApp != null:
return loadCurrentPositionApp();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AddressAddEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressAddEvent.started()';
}


}




/// @nodoc


class _LoadCurrentPositionApp implements AddressAddEvent {
  const _LoadCurrentPositionApp();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadCurrentPositionApp);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressAddEvent.loadCurrentPositionApp()';
}


}




/// @nodoc
mixin _$AddressAddStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressAddStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressAddStatus()';
}


}

/// @nodoc
class $AddressAddStatusCopyWith<$Res>  {
$AddressAddStatusCopyWith(AddressAddStatus _, $Res Function(AddressAddStatus) __);
}


/// Adds pattern-matching-related methods to [AddressAddStatus].
extension AddressAddStatusPatterns on AddressAddStatus {
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


class _Initial implements AddressAddStatus {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressAddStatus.initial()';
}


}




/// @nodoc


class _Loading implements AddressAddStatus {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressAddStatus.loading()';
}


}




/// @nodoc


class _Loaded implements AddressAddStatus {
  const _Loaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressAddStatus.loaded()';
}


}




/// @nodoc


class _ServerFailure implements AddressAddStatus {
  const _ServerFailure(this.message);
  

 final  String message;

/// Create a copy of AddressAddStatus
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
  return 'AddressAddStatus.serverFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ServerFailureCopyWith<$Res> implements $AddressAddStatusCopyWith<$Res> {
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

/// Create a copy of AddressAddStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ServerFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AddressAddState {

 AddressAddStatus get status;// Location Data
 Position? get position; double? get lat; double? get long;
/// Create a copy of AddressAddState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressAddStateCopyWith<AddressAddState> get copyWith => _$AddressAddStateCopyWithImpl<AddressAddState>(this as AddressAddState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressAddState&&(identical(other.status, status) || other.status == status)&&(identical(other.position, position) || other.position == position)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.long, long) || other.long == long));
}


@override
int get hashCode => Object.hash(runtimeType,status,position,lat,long);

@override
String toString() {
  return 'AddressAddState(status: $status, position: $position, lat: $lat, long: $long)';
}


}

/// @nodoc
abstract mixin class $AddressAddStateCopyWith<$Res>  {
  factory $AddressAddStateCopyWith(AddressAddState value, $Res Function(AddressAddState) _then) = _$AddressAddStateCopyWithImpl;
@useResult
$Res call({
 AddressAddStatus status, Position? position, double? lat, double? long
});


$AddressAddStatusCopyWith<$Res> get status;

}
/// @nodoc
class _$AddressAddStateCopyWithImpl<$Res>
    implements $AddressAddStateCopyWith<$Res> {
  _$AddressAddStateCopyWithImpl(this._self, this._then);

  final AddressAddState _self;
  final $Res Function(AddressAddState) _then;

/// Create a copy of AddressAddState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? position = freezed,Object? lat = freezed,Object? long = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AddressAddStatus,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as Position?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,long: freezed == long ? _self.long : long // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of AddressAddState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressAddStatusCopyWith<$Res> get status {
  
  return $AddressAddStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddressAddState].
extension AddressAddStatePatterns on AddressAddState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdderssAddState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdderssAddState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdderssAddState value)  $default,){
final _that = this;
switch (_that) {
case _AdderssAddState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdderssAddState value)?  $default,){
final _that = this;
switch (_that) {
case _AdderssAddState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AddressAddStatus status,  Position? position,  double? lat,  double? long)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdderssAddState() when $default != null:
return $default(_that.status,_that.position,_that.lat,_that.long);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AddressAddStatus status,  Position? position,  double? lat,  double? long)  $default,) {final _that = this;
switch (_that) {
case _AdderssAddState():
return $default(_that.status,_that.position,_that.lat,_that.long);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AddressAddStatus status,  Position? position,  double? lat,  double? long)?  $default,) {final _that = this;
switch (_that) {
case _AdderssAddState() when $default != null:
return $default(_that.status,_that.position,_that.lat,_that.long);case _:
  return null;

}
}

}

/// @nodoc


class _AdderssAddState implements AddressAddState {
  const _AdderssAddState({this.status = const AddressAddStatus.initial(), this.position, this.lat, this.long});
  

@override@JsonKey() final  AddressAddStatus status;
// Location Data
@override final  Position? position;
@override final  double? lat;
@override final  double? long;

/// Create a copy of AddressAddState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdderssAddStateCopyWith<_AdderssAddState> get copyWith => __$AdderssAddStateCopyWithImpl<_AdderssAddState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdderssAddState&&(identical(other.status, status) || other.status == status)&&(identical(other.position, position) || other.position == position)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.long, long) || other.long == long));
}


@override
int get hashCode => Object.hash(runtimeType,status,position,lat,long);

@override
String toString() {
  return 'AddressAddState(status: $status, position: $position, lat: $lat, long: $long)';
}


}

/// @nodoc
abstract mixin class _$AdderssAddStateCopyWith<$Res> implements $AddressAddStateCopyWith<$Res> {
  factory _$AdderssAddStateCopyWith(_AdderssAddState value, $Res Function(_AdderssAddState) _then) = __$AdderssAddStateCopyWithImpl;
@override @useResult
$Res call({
 AddressAddStatus status, Position? position, double? lat, double? long
});


@override $AddressAddStatusCopyWith<$Res> get status;

}
/// @nodoc
class __$AdderssAddStateCopyWithImpl<$Res>
    implements _$AdderssAddStateCopyWith<$Res> {
  __$AdderssAddStateCopyWithImpl(this._self, this._then);

  final _AdderssAddState _self;
  final $Res Function(_AdderssAddState) _then;

/// Create a copy of AddressAddState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? position = freezed,Object? lat = freezed,Object? long = freezed,}) {
  return _then(_AdderssAddState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AddressAddStatus,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as Position?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,long: freezed == long ? _self.long : long // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of AddressAddState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressAddStatusCopyWith<$Res> get status {
  
  return $AddressAddStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

// dart format on
