// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'archive_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArchiveEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArchiveEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArchiveEvent()';
}


}

/// @nodoc
class $ArchiveEventCopyWith<$Res>  {
$ArchiveEventCopyWith(ArchiveEvent _, $Res Function(ArchiveEvent) __);
}


/// Adds pattern-matching-related methods to [ArchiveEvent].
extension ArchiveEventPatterns on ArchiveEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchOrders value)?  fetchOrders,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchOrders() when fetchOrders != null:
return fetchOrders(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchOrders value)  fetchOrders,}){
final _that = this;
switch (_that) {
case _FetchOrders():
return fetchOrders(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchOrders value)?  fetchOrders,}){
final _that = this;
switch (_that) {
case _FetchOrders() when fetchOrders != null:
return fetchOrders(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchOrders,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchOrders() when fetchOrders != null:
return fetchOrders();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchOrders,}) {final _that = this;
switch (_that) {
case _FetchOrders():
return fetchOrders();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchOrders,}) {final _that = this;
switch (_that) {
case _FetchOrders() when fetchOrders != null:
return fetchOrders();case _:
  return null;

}
}

}

/// @nodoc


class _FetchOrders implements ArchiveEvent {
  const _FetchOrders();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchOrders);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArchiveEvent.fetchOrders()';
}


}




/// @nodoc
mixin _$ArchiveStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArchiveStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArchiveStatus()';
}


}

/// @nodoc
class $ArchiveStatusCopyWith<$Res>  {
$ArchiveStatusCopyWith(ArchiveStatus _, $Res Function(ArchiveStatus) __);
}


/// Adds pattern-matching-related methods to [ArchiveStatus].
extension ArchiveStatusPatterns on ArchiveStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Empty value)?  empty,TResult Function( _Loaded value)?  loaded,TResult Function( _ServerFailure value)?  serverFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Empty() when empty != null:
return empty(_that);case _Loaded() when loaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Empty value)  empty,required TResult Function( _Loaded value)  loaded,required TResult Function( _ServerFailure value)  serverFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Empty():
return empty(_that);case _Loaded():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Empty value)?  empty,TResult? Function( _Loaded value)?  loaded,TResult? Function( _ServerFailure value)?  serverFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Empty() when empty != null:
return empty(_that);case _Loaded() when loaded != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  empty,TResult Function( List<OrderModel> orders)?  loaded,TResult Function( String message)?  serverFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Empty() when empty != null:
return empty(_that.message);case _Loaded() when loaded != null:
return loaded(_that.orders);case _ServerFailure() when serverFailure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  empty,required TResult Function( List<OrderModel> orders)  loaded,required TResult Function( String message)  serverFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Empty():
return empty(_that.message);case _Loaded():
return loaded(_that.orders);case _ServerFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  empty,TResult? Function( List<OrderModel> orders)?  loaded,TResult? Function( String message)?  serverFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Empty() when empty != null:
return empty(_that.message);case _Loaded() when loaded != null:
return loaded(_that.orders);case _ServerFailure() when serverFailure != null:
return serverFailure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ArchiveStatus {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArchiveStatus.initial()';
}


}




/// @nodoc


class _Loading implements ArchiveStatus {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArchiveStatus.loading()';
}


}




/// @nodoc


class _Empty implements ArchiveStatus {
  const _Empty(this.message);
  

 final  String message;

/// Create a copy of ArchiveStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmptyCopyWith<_Empty> get copyWith => __$EmptyCopyWithImpl<_Empty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Empty&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ArchiveStatus.empty(message: $message)';
}


}

/// @nodoc
abstract mixin class _$EmptyCopyWith<$Res> implements $ArchiveStatusCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) _then) = __$EmptyCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$EmptyCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(this._self, this._then);

  final _Empty _self;
  final $Res Function(_Empty) _then;

/// Create a copy of ArchiveStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Empty(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Loaded implements ArchiveStatus {
  const _Loaded({final  List<OrderModel> orders = const []}): _orders = orders;
  

 final  List<OrderModel> _orders;
@JsonKey() List<OrderModel> get orders {
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orders);
}


/// Create a copy of ArchiveStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._orders, _orders));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_orders));

@override
String toString() {
  return 'ArchiveStatus.loaded(orders: $orders)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $ArchiveStatusCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<OrderModel> orders
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of ArchiveStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? orders = null,}) {
  return _then(_Loaded(
orders: null == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<OrderModel>,
  ));
}


}

/// @nodoc


class _ServerFailure implements ArchiveStatus {
  const _ServerFailure(this.message);
  

 final  String message;

/// Create a copy of ArchiveStatus
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
  return 'ArchiveStatus.serverFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ServerFailureCopyWith<$Res> implements $ArchiveStatusCopyWith<$Res> {
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

/// Create a copy of ArchiveStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ServerFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$RateStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RateStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RateStatus()';
}


}

/// @nodoc
class $RateStatusCopyWith<$Res>  {
$RateStatusCopyWith(RateStatus _, $Res Function(RateStatus) __);
}


/// Adds pattern-matching-related methods to [RateStatus].
extension RateStatusPatterns on RateStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _RateInitial value)?  initial,TResult Function( _RateLoading value)?  loading,TResult Function( _RateSuccess value)?  success,TResult Function( _RateFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RateInitial() when initial != null:
return initial(_that);case _RateLoading() when loading != null:
return loading(_that);case _RateSuccess() when success != null:
return success(_that);case _RateFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _RateInitial value)  initial,required TResult Function( _RateLoading value)  loading,required TResult Function( _RateSuccess value)  success,required TResult Function( _RateFailure value)  failure,}){
final _that = this;
switch (_that) {
case _RateInitial():
return initial(_that);case _RateLoading():
return loading(_that);case _RateSuccess():
return success(_that);case _RateFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _RateInitial value)?  initial,TResult? Function( _RateLoading value)?  loading,TResult? Function( _RateSuccess value)?  success,TResult? Function( _RateFailure value)?  failure,}){
final _that = this;
switch (_that) {
case _RateInitial() when initial != null:
return initial(_that);case _RateLoading() when loading != null:
return loading(_that);case _RateSuccess() when success != null:
return success(_that);case _RateFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RateInitial() when initial != null:
return initial();case _RateLoading() when loading != null:
return loading();case _RateSuccess() when success != null:
return success(_that.message);case _RateFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case _RateInitial():
return initial();case _RateLoading():
return loading();case _RateSuccess():
return success(_that.message);case _RateFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case _RateInitial() when initial != null:
return initial();case _RateLoading() when loading != null:
return loading();case _RateSuccess() when success != null:
return success(_that.message);case _RateFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _RateInitial implements RateStatus {
  const _RateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RateStatus.initial()';
}


}




/// @nodoc


class _RateLoading implements RateStatus {
  const _RateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RateStatus.loading()';
}


}




/// @nodoc


class _RateSuccess implements RateStatus {
  const _RateSuccess(this.message);
  

 final  String message;

/// Create a copy of RateStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RateSuccessCopyWith<_RateSuccess> get copyWith => __$RateSuccessCopyWithImpl<_RateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RateSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'RateStatus.success(message: $message)';
}


}

/// @nodoc
abstract mixin class _$RateSuccessCopyWith<$Res> implements $RateStatusCopyWith<$Res> {
  factory _$RateSuccessCopyWith(_RateSuccess value, $Res Function(_RateSuccess) _then) = __$RateSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$RateSuccessCopyWithImpl<$Res>
    implements _$RateSuccessCopyWith<$Res> {
  __$RateSuccessCopyWithImpl(this._self, this._then);

  final _RateSuccess _self;
  final $Res Function(_RateSuccess) _then;

/// Create a copy of RateStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_RateSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RateFailure implements RateStatus {
  const _RateFailure(this.message);
  

 final  String message;

/// Create a copy of RateStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RateFailureCopyWith<_RateFailure> get copyWith => __$RateFailureCopyWithImpl<_RateFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RateFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'RateStatus.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$RateFailureCopyWith<$Res> implements $RateStatusCopyWith<$Res> {
  factory _$RateFailureCopyWith(_RateFailure value, $Res Function(_RateFailure) _then) = __$RateFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$RateFailureCopyWithImpl<$Res>
    implements _$RateFailureCopyWith<$Res> {
  __$RateFailureCopyWithImpl(this._self, this._then);

  final _RateFailure _self;
  final $Res Function(_RateFailure) _then;

/// Create a copy of RateStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_RateFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ArchiveState {

 ArchiveStatus get status; RateStatus get rateStatus;
/// Create a copy of ArchiveState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArchiveStateCopyWith<ArchiveState> get copyWith => _$ArchiveStateCopyWithImpl<ArchiveState>(this as ArchiveState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArchiveState&&(identical(other.status, status) || other.status == status)&&(identical(other.rateStatus, rateStatus) || other.rateStatus == rateStatus));
}


@override
int get hashCode => Object.hash(runtimeType,status,rateStatus);

@override
String toString() {
  return 'ArchiveState(status: $status, rateStatus: $rateStatus)';
}


}

/// @nodoc
abstract mixin class $ArchiveStateCopyWith<$Res>  {
  factory $ArchiveStateCopyWith(ArchiveState value, $Res Function(ArchiveState) _then) = _$ArchiveStateCopyWithImpl;
@useResult
$Res call({
 ArchiveStatus status, RateStatus rateStatus
});


$ArchiveStatusCopyWith<$Res> get status;$RateStatusCopyWith<$Res> get rateStatus;

}
/// @nodoc
class _$ArchiveStateCopyWithImpl<$Res>
    implements $ArchiveStateCopyWith<$Res> {
  _$ArchiveStateCopyWithImpl(this._self, this._then);

  final ArchiveState _self;
  final $Res Function(ArchiveState) _then;

/// Create a copy of ArchiveState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? rateStatus = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ArchiveStatus,rateStatus: null == rateStatus ? _self.rateStatus : rateStatus // ignore: cast_nullable_to_non_nullable
as RateStatus,
  ));
}
/// Create a copy of ArchiveState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArchiveStatusCopyWith<$Res> get status {
  
  return $ArchiveStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ArchiveState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RateStatusCopyWith<$Res> get rateStatus {
  
  return $RateStatusCopyWith<$Res>(_self.rateStatus, (value) {
    return _then(_self.copyWith(rateStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [ArchiveState].
extension ArchiveStatePatterns on ArchiveState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArchiveState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArchiveState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArchiveState value)  $default,){
final _that = this;
switch (_that) {
case _ArchiveState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArchiveState value)?  $default,){
final _that = this;
switch (_that) {
case _ArchiveState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ArchiveStatus status,  RateStatus rateStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArchiveState() when $default != null:
return $default(_that.status,_that.rateStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ArchiveStatus status,  RateStatus rateStatus)  $default,) {final _that = this;
switch (_that) {
case _ArchiveState():
return $default(_that.status,_that.rateStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ArchiveStatus status,  RateStatus rateStatus)?  $default,) {final _that = this;
switch (_that) {
case _ArchiveState() when $default != null:
return $default(_that.status,_that.rateStatus);case _:
  return null;

}
}

}

/// @nodoc


class _ArchiveState implements ArchiveState {
  const _ArchiveState({this.status = const ArchiveStatus.initial(), this.rateStatus = const RateStatus.initial()});
  

@override@JsonKey() final  ArchiveStatus status;
@override@JsonKey() final  RateStatus rateStatus;

/// Create a copy of ArchiveState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArchiveStateCopyWith<_ArchiveState> get copyWith => __$ArchiveStateCopyWithImpl<_ArchiveState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArchiveState&&(identical(other.status, status) || other.status == status)&&(identical(other.rateStatus, rateStatus) || other.rateStatus == rateStatus));
}


@override
int get hashCode => Object.hash(runtimeType,status,rateStatus);

@override
String toString() {
  return 'ArchiveState(status: $status, rateStatus: $rateStatus)';
}


}

/// @nodoc
abstract mixin class _$ArchiveStateCopyWith<$Res> implements $ArchiveStateCopyWith<$Res> {
  factory _$ArchiveStateCopyWith(_ArchiveState value, $Res Function(_ArchiveState) _then) = __$ArchiveStateCopyWithImpl;
@override @useResult
$Res call({
 ArchiveStatus status, RateStatus rateStatus
});


@override $ArchiveStatusCopyWith<$Res> get status;@override $RateStatusCopyWith<$Res> get rateStatus;

}
/// @nodoc
class __$ArchiveStateCopyWithImpl<$Res>
    implements _$ArchiveStateCopyWith<$Res> {
  __$ArchiveStateCopyWithImpl(this._self, this._then);

  final _ArchiveState _self;
  final $Res Function(_ArchiveState) _then;

/// Create a copy of ArchiveState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? rateStatus = null,}) {
  return _then(_ArchiveState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ArchiveStatus,rateStatus: null == rateStatus ? _self.rateStatus : rateStatus // ignore: cast_nullable_to_non_nullable
as RateStatus,
  ));
}

/// Create a copy of ArchiveState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArchiveStatusCopyWith<$Res> get status {
  
  return $ArchiveStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ArchiveState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RateStatusCopyWith<$Res> get rateStatus {
  
  return $RateStatusCopyWith<$Res>(_self.rateStatus, (value) {
    return _then(_self.copyWith(rateStatus: value));
  });
}
}

// dart format on
