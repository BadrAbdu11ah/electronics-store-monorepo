// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddCategoryStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCategoryStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddCategoryStatus()';
}


}

/// @nodoc
class $AddCategoryStatusCopyWith<$Res>  {
$AddCategoryStatusCopyWith(AddCategoryStatus _, $Res Function(AddCategoryStatus) __);
}


/// Adds pattern-matching-related methods to [AddCategoryStatus].
extension AddCategoryStatusPatterns on AddCategoryStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _ServerFailure value)?  serverFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _ServerFailure() when serverFailure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _ServerFailure value)  serverFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Success():
return success(_that);case _ServerFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _ServerFailure value)?  serverFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _ServerFailure() when serverFailure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( String message)?  serverFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success();case _ServerFailure() when serverFailure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( String message)  serverFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Success():
return success();case _ServerFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( String message)?  serverFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success();case _ServerFailure() when serverFailure != null:
return serverFailure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AddCategoryStatus {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddCategoryStatus.initial()';
}


}




/// @nodoc


class _Loading implements AddCategoryStatus {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddCategoryStatus.loading()';
}


}




/// @nodoc


class _Success implements AddCategoryStatus {
  const _Success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddCategoryStatus.success()';
}


}




/// @nodoc


class _ServerFailure implements AddCategoryStatus {
  const _ServerFailure(this.message);
  

 final  String message;

/// Create a copy of AddCategoryStatus
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
  return 'AddCategoryStatus.serverFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ServerFailureCopyWith<$Res> implements $AddCategoryStatusCopyWith<$Res> {
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

/// Create a copy of AddCategoryStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ServerFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SnackBarStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SnackBarStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SnackBarStatus()';
}


}

/// @nodoc
class $SnackBarStatusCopyWith<$Res>  {
$SnackBarStatusCopyWith(SnackBarStatus _, $Res Function(SnackBarStatus) __);
}


/// Adds pattern-matching-related methods to [SnackBarStatus].
extension SnackBarStatusPatterns on SnackBarStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SnackBarInitial value)?  initial,TResult Function( _SnackBarSuccess value)?  success,TResult Function( _SnackBarFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SnackBarInitial() when initial != null:
return initial(_that);case _SnackBarSuccess() when success != null:
return success(_that);case _SnackBarFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SnackBarInitial value)  initial,required TResult Function( _SnackBarSuccess value)  success,required TResult Function( _SnackBarFailure value)  failure,}){
final _that = this;
switch (_that) {
case _SnackBarInitial():
return initial(_that);case _SnackBarSuccess():
return success(_that);case _SnackBarFailure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SnackBarInitial value)?  initial,TResult? Function( _SnackBarSuccess value)?  success,TResult? Function( _SnackBarFailure value)?  failure,}){
final _that = this;
switch (_that) {
case _SnackBarInitial() when initial != null:
return initial(_that);case _SnackBarSuccess() when success != null:
return success(_that);case _SnackBarFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( String message)?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SnackBarInitial() when initial != null:
return initial();case _SnackBarSuccess() when success != null:
return success(_that.message);case _SnackBarFailure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( String message)  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case _SnackBarInitial():
return initial();case _SnackBarSuccess():
return success(_that.message);case _SnackBarFailure():
return failure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( String message)?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case _SnackBarInitial() when initial != null:
return initial();case _SnackBarSuccess() when success != null:
return success(_that.message);case _SnackBarFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _SnackBarInitial implements SnackBarStatus {
  const _SnackBarInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SnackBarInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SnackBarStatus.initial()';
}


}




/// @nodoc


class _SnackBarSuccess implements SnackBarStatus {
  const _SnackBarSuccess(this.message);
  

 final  String message;

/// Create a copy of SnackBarStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SnackBarSuccessCopyWith<_SnackBarSuccess> get copyWith => __$SnackBarSuccessCopyWithImpl<_SnackBarSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SnackBarSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SnackBarStatus.success(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SnackBarSuccessCopyWith<$Res> implements $SnackBarStatusCopyWith<$Res> {
  factory _$SnackBarSuccessCopyWith(_SnackBarSuccess value, $Res Function(_SnackBarSuccess) _then) = __$SnackBarSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$SnackBarSuccessCopyWithImpl<$Res>
    implements _$SnackBarSuccessCopyWith<$Res> {
  __$SnackBarSuccessCopyWithImpl(this._self, this._then);

  final _SnackBarSuccess _self;
  final $Res Function(_SnackBarSuccess) _then;

/// Create a copy of SnackBarStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_SnackBarSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SnackBarFailure implements SnackBarStatus {
  const _SnackBarFailure(this.message);
  

 final  String message;

/// Create a copy of SnackBarStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SnackBarFailureCopyWith<_SnackBarFailure> get copyWith => __$SnackBarFailureCopyWithImpl<_SnackBarFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SnackBarFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SnackBarStatus.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SnackBarFailureCopyWith<$Res> implements $SnackBarStatusCopyWith<$Res> {
  factory _$SnackBarFailureCopyWith(_SnackBarFailure value, $Res Function(_SnackBarFailure) _then) = __$SnackBarFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$SnackBarFailureCopyWithImpl<$Res>
    implements _$SnackBarFailureCopyWith<$Res> {
  __$SnackBarFailureCopyWithImpl(this._self, this._then);

  final _SnackBarFailure _self;
  final $Res Function(_SnackBarFailure) _then;

/// Create a copy of SnackBarStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_SnackBarFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AddCategoryState {

 AddCategoryStatus get status; File? get image; SnackBarStatus get snackBarStatus;
/// Create a copy of AddCategoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCategoryStateCopyWith<AddCategoryState> get copyWith => _$AddCategoryStateCopyWithImpl<AddCategoryState>(this as AddCategoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCategoryState&&(identical(other.status, status) || other.status == status)&&(identical(other.image, image) || other.image == image)&&(identical(other.snackBarStatus, snackBarStatus) || other.snackBarStatus == snackBarStatus));
}


@override
int get hashCode => Object.hash(runtimeType,status,image,snackBarStatus);

@override
String toString() {
  return 'AddCategoryState(status: $status, image: $image, snackBarStatus: $snackBarStatus)';
}


}

/// @nodoc
abstract mixin class $AddCategoryStateCopyWith<$Res>  {
  factory $AddCategoryStateCopyWith(AddCategoryState value, $Res Function(AddCategoryState) _then) = _$AddCategoryStateCopyWithImpl;
@useResult
$Res call({
 AddCategoryStatus status, File? image, SnackBarStatus snackBarStatus
});


$AddCategoryStatusCopyWith<$Res> get status;$SnackBarStatusCopyWith<$Res> get snackBarStatus;

}
/// @nodoc
class _$AddCategoryStateCopyWithImpl<$Res>
    implements $AddCategoryStateCopyWith<$Res> {
  _$AddCategoryStateCopyWithImpl(this._self, this._then);

  final AddCategoryState _self;
  final $Res Function(AddCategoryState) _then;

/// Create a copy of AddCategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? image = freezed,Object? snackBarStatus = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AddCategoryStatus,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as File?,snackBarStatus: null == snackBarStatus ? _self.snackBarStatus : snackBarStatus // ignore: cast_nullable_to_non_nullable
as SnackBarStatus,
  ));
}
/// Create a copy of AddCategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddCategoryStatusCopyWith<$Res> get status {
  
  return $AddCategoryStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of AddCategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SnackBarStatusCopyWith<$Res> get snackBarStatus {
  
  return $SnackBarStatusCopyWith<$Res>(_self.snackBarStatus, (value) {
    return _then(_self.copyWith(snackBarStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddCategoryState].
extension AddCategoryStatePatterns on AddCategoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddCategoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddCategoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddCategoryState value)  $default,){
final _that = this;
switch (_that) {
case _AddCategoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddCategoryState value)?  $default,){
final _that = this;
switch (_that) {
case _AddCategoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AddCategoryStatus status,  File? image,  SnackBarStatus snackBarStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddCategoryState() when $default != null:
return $default(_that.status,_that.image,_that.snackBarStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AddCategoryStatus status,  File? image,  SnackBarStatus snackBarStatus)  $default,) {final _that = this;
switch (_that) {
case _AddCategoryState():
return $default(_that.status,_that.image,_that.snackBarStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AddCategoryStatus status,  File? image,  SnackBarStatus snackBarStatus)?  $default,) {final _that = this;
switch (_that) {
case _AddCategoryState() when $default != null:
return $default(_that.status,_that.image,_that.snackBarStatus);case _:
  return null;

}
}

}

/// @nodoc


class _AddCategoryState implements AddCategoryState {
  const _AddCategoryState({this.status = const AddCategoryStatus.initial(), this.image, this.snackBarStatus = const SnackBarStatus.initial()});
  

@override@JsonKey() final  AddCategoryStatus status;
@override final  File? image;
@override@JsonKey() final  SnackBarStatus snackBarStatus;

/// Create a copy of AddCategoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddCategoryStateCopyWith<_AddCategoryState> get copyWith => __$AddCategoryStateCopyWithImpl<_AddCategoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddCategoryState&&(identical(other.status, status) || other.status == status)&&(identical(other.image, image) || other.image == image)&&(identical(other.snackBarStatus, snackBarStatus) || other.snackBarStatus == snackBarStatus));
}


@override
int get hashCode => Object.hash(runtimeType,status,image,snackBarStatus);

@override
String toString() {
  return 'AddCategoryState(status: $status, image: $image, snackBarStatus: $snackBarStatus)';
}


}

/// @nodoc
abstract mixin class _$AddCategoryStateCopyWith<$Res> implements $AddCategoryStateCopyWith<$Res> {
  factory _$AddCategoryStateCopyWith(_AddCategoryState value, $Res Function(_AddCategoryState) _then) = __$AddCategoryStateCopyWithImpl;
@override @useResult
$Res call({
 AddCategoryStatus status, File? image, SnackBarStatus snackBarStatus
});


@override $AddCategoryStatusCopyWith<$Res> get status;@override $SnackBarStatusCopyWith<$Res> get snackBarStatus;

}
/// @nodoc
class __$AddCategoryStateCopyWithImpl<$Res>
    implements _$AddCategoryStateCopyWith<$Res> {
  __$AddCategoryStateCopyWithImpl(this._self, this._then);

  final _AddCategoryState _self;
  final $Res Function(_AddCategoryState) _then;

/// Create a copy of AddCategoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? image = freezed,Object? snackBarStatus = null,}) {
  return _then(_AddCategoryState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AddCategoryStatus,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as File?,snackBarStatus: null == snackBarStatus ? _self.snackBarStatus : snackBarStatus // ignore: cast_nullable_to_non_nullable
as SnackBarStatus,
  ));
}

/// Create a copy of AddCategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddCategoryStatusCopyWith<$Res> get status {
  
  return $AddCategoryStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of AddCategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SnackBarStatusCopyWith<$Res> get snackBarStatus {
  
  return $SnackBarStatusCopyWith<$Res>(_self.snackBarStatus, (value) {
    return _then(_self.copyWith(snackBarStatus: value));
  });
}
}

/// @nodoc
mixin _$AddCategoryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCategoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddCategoryEvent()';
}


}

/// @nodoc
class $AddCategoryEventCopyWith<$Res>  {
$AddCategoryEventCopyWith(AddCategoryEvent _, $Res Function(AddCategoryEvent) __);
}


/// Adds pattern-matching-related methods to [AddCategoryEvent].
extension AddCategoryEventPatterns on AddCategoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Submit value)?  submit,TResult Function( _SetImege value)?  setImage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Submit() when submit != null:
return submit(_that);case _SetImege() when setImage != null:
return setImage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Submit value)  submit,required TResult Function( _SetImege value)  setImage,}){
final _that = this;
switch (_that) {
case _Submit():
return submit(_that);case _SetImege():
return setImage(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Submit value)?  submit,TResult? Function( _SetImege value)?  setImage,}){
final _that = this;
switch (_that) {
case _Submit() when submit != null:
return submit(_that);case _SetImege() when setImage != null:
return setImage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name,  String nameAr,  String description)?  submit,TResult Function( File file)?  setImage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Submit() when submit != null:
return submit(_that.name,_that.nameAr,_that.description);case _SetImege() when setImage != null:
return setImage(_that.file);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name,  String nameAr,  String description)  submit,required TResult Function( File file)  setImage,}) {final _that = this;
switch (_that) {
case _Submit():
return submit(_that.name,_that.nameAr,_that.description);case _SetImege():
return setImage(_that.file);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name,  String nameAr,  String description)?  submit,TResult? Function( File file)?  setImage,}) {final _that = this;
switch (_that) {
case _Submit() when submit != null:
return submit(_that.name,_that.nameAr,_that.description);case _SetImege() when setImage != null:
return setImage(_that.file);case _:
  return null;

}
}

}

/// @nodoc


class _Submit implements AddCategoryEvent {
  const _Submit({required this.name, required this.nameAr, required this.description});
  

 final  String name;
 final  String nameAr;
 final  String description;

/// Create a copy of AddCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitCopyWith<_Submit> get copyWith => __$SubmitCopyWithImpl<_Submit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submit&&(identical(other.name, name) || other.name == name)&&(identical(other.nameAr, nameAr) || other.nameAr == nameAr)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,name,nameAr,description);

@override
String toString() {
  return 'AddCategoryEvent.submit(name: $name, nameAr: $nameAr, description: $description)';
}


}

/// @nodoc
abstract mixin class _$SubmitCopyWith<$Res> implements $AddCategoryEventCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) _then) = __$SubmitCopyWithImpl;
@useResult
$Res call({
 String name, String nameAr, String description
});




}
/// @nodoc
class __$SubmitCopyWithImpl<$Res>
    implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(this._self, this._then);

  final _Submit _self;
  final $Res Function(_Submit) _then;

/// Create a copy of AddCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? nameAr = null,Object? description = null,}) {
  return _then(_Submit(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameAr: null == nameAr ? _self.nameAr : nameAr // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SetImege implements AddCategoryEvent {
  const _SetImege(this.file);
  

 final  File file;

/// Create a copy of AddCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetImegeCopyWith<_SetImege> get copyWith => __$SetImegeCopyWithImpl<_SetImege>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetImege&&(identical(other.file, file) || other.file == file));
}


@override
int get hashCode => Object.hash(runtimeType,file);

@override
String toString() {
  return 'AddCategoryEvent.setImage(file: $file)';
}


}

/// @nodoc
abstract mixin class _$SetImegeCopyWith<$Res> implements $AddCategoryEventCopyWith<$Res> {
  factory _$SetImegeCopyWith(_SetImege value, $Res Function(_SetImege) _then) = __$SetImegeCopyWithImpl;
@useResult
$Res call({
 File file
});




}
/// @nodoc
class __$SetImegeCopyWithImpl<$Res>
    implements _$SetImegeCopyWith<$Res> {
  __$SetImegeCopyWithImpl(this._self, this._then);

  final _SetImege _self;
  final $Res Function(_SetImege) _then;

/// Create a copy of AddCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? file = null,}) {
  return _then(_SetImege(
null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as File,
  ));
}


}

// dart format on
