// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoriteEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteEvent()';
}


}

/// @nodoc
class $FavoriteEventCopyWith<$Res>  {
$FavoriteEventCopyWith(FavoriteEvent _, $Res Function(FavoriteEvent) __);
}


/// Adds pattern-matching-related methods to [FavoriteEvent].
extension FavoriteEventPatterns on FavoriteEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _LoadFavoriteProducts value)?  loadFavoriteProducts,TResult Function( _RemoveFavorite value)?  removeFavorite,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadFavoriteProducts() when loadFavoriteProducts != null:
return loadFavoriteProducts(_that);case _RemoveFavorite() when removeFavorite != null:
return removeFavorite(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _LoadFavoriteProducts value)  loadFavoriteProducts,required TResult Function( _RemoveFavorite value)  removeFavorite,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _LoadFavoriteProducts():
return loadFavoriteProducts(_that);case _RemoveFavorite():
return removeFavorite(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _LoadFavoriteProducts value)?  loadFavoriteProducts,TResult? Function( _RemoveFavorite value)?  removeFavorite,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadFavoriteProducts() when loadFavoriteProducts != null:
return loadFavoriteProducts(_that);case _RemoveFavorite() when removeFavorite != null:
return removeFavorite(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  loadFavoriteProducts,TResult Function( int itemId)?  removeFavorite,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadFavoriteProducts() when loadFavoriteProducts != null:
return loadFavoriteProducts();case _RemoveFavorite() when removeFavorite != null:
return removeFavorite(_that.itemId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  loadFavoriteProducts,required TResult Function( int itemId)  removeFavorite,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _LoadFavoriteProducts():
return loadFavoriteProducts();case _RemoveFavorite():
return removeFavorite(_that.itemId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  loadFavoriteProducts,TResult? Function( int itemId)?  removeFavorite,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadFavoriteProducts() when loadFavoriteProducts != null:
return loadFavoriteProducts();case _RemoveFavorite() when removeFavorite != null:
return removeFavorite(_that.itemId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements FavoriteEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteEvent.started()';
}


}




/// @nodoc


class _LoadFavoriteProducts implements FavoriteEvent {
  const _LoadFavoriteProducts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadFavoriteProducts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteEvent.loadFavoriteProducts()';
}


}




/// @nodoc


class _RemoveFavorite implements FavoriteEvent {
  const _RemoveFavorite(this.itemId);
  

 final  int itemId;

/// Create a copy of FavoriteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveFavoriteCopyWith<_RemoveFavorite> get copyWith => __$RemoveFavoriteCopyWithImpl<_RemoveFavorite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveFavorite&&(identical(other.itemId, itemId) || other.itemId == itemId));
}


@override
int get hashCode => Object.hash(runtimeType,itemId);

@override
String toString() {
  return 'FavoriteEvent.removeFavorite(itemId: $itemId)';
}


}

/// @nodoc
abstract mixin class _$RemoveFavoriteCopyWith<$Res> implements $FavoriteEventCopyWith<$Res> {
  factory _$RemoveFavoriteCopyWith(_RemoveFavorite value, $Res Function(_RemoveFavorite) _then) = __$RemoveFavoriteCopyWithImpl;
@useResult
$Res call({
 int itemId
});




}
/// @nodoc
class __$RemoveFavoriteCopyWithImpl<$Res>
    implements _$RemoveFavoriteCopyWith<$Res> {
  __$RemoveFavoriteCopyWithImpl(this._self, this._then);

  final _RemoveFavorite _self;
  final $Res Function(_RemoveFavorite) _then;

/// Create a copy of FavoriteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? itemId = null,}) {
  return _then(_RemoveFavorite(
null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$FavoriteStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteStatus()';
}


}

/// @nodoc
class $FavoriteStatusCopyWith<$Res>  {
$FavoriteStatusCopyWith(FavoriteStatus _, $Res Function(FavoriteStatus) __);
}


/// Adds pattern-matching-related methods to [FavoriteStatus].
extension FavoriteStatusPatterns on FavoriteStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _loaded value)?  loaded,TResult Function( _NoData value)?  noData,TResult Function( _ServerFailure value)?  serverFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _loaded() when loaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _loaded value)  loaded,required TResult Function( _NoData value)  noData,required TResult Function( _ServerFailure value)  serverFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _loaded():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _loaded value)?  loaded,TResult? Function( _NoData value)?  noData,TResult? Function( _ServerFailure value)?  serverFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _loaded() when loaded != null:
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
return loading();case _loaded() when loaded != null:
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
return loading();case _loaded():
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
return loading();case _loaded() when loaded != null:
return loaded();case _NoData() when noData != null:
return noData(_that.message);case _ServerFailure() when serverFailure != null:
return serverFailure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements FavoriteStatus {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteStatus.initial()';
}


}




/// @nodoc


class _Loading implements FavoriteStatus {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteStatus.loading()';
}


}




/// @nodoc


class _loaded implements FavoriteStatus {
  const _loaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _loaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteStatus.loaded()';
}


}




/// @nodoc


class _NoData implements FavoriteStatus {
  const _NoData(this.message);
  

 final  String message;

/// Create a copy of FavoriteStatus
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
  return 'FavoriteStatus.noData(message: $message)';
}


}

/// @nodoc
abstract mixin class _$NoDataCopyWith<$Res> implements $FavoriteStatusCopyWith<$Res> {
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

/// Create a copy of FavoriteStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_NoData(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ServerFailure implements FavoriteStatus {
  const _ServerFailure(this.message);
  

 final  String message;

/// Create a copy of FavoriteStatus
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
  return 'FavoriteStatus.serverFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ServerFailureCopyWith<$Res> implements $FavoriteStatusCopyWith<$Res> {
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

/// Create a copy of FavoriteStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ServerFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$RemoveStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RemoveStatus()';
}


}

/// @nodoc
class $RemoveStatusCopyWith<$Res>  {
$RemoveStatusCopyWith(RemoveStatus _, $Res Function(RemoveStatus) __);
}


/// Adds pattern-matching-related methods to [RemoveStatus].
extension RemoveStatusPatterns on RemoveStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _RemoveInitial value)?  initial,TResult Function( _RemoveSuccess value)?  success,TResult Function( _RemoveFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoveInitial() when initial != null:
return initial(_that);case _RemoveSuccess() when success != null:
return success(_that);case _RemoveFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _RemoveInitial value)  initial,required TResult Function( _RemoveSuccess value)  success,required TResult Function( _RemoveFailure value)  failure,}){
final _that = this;
switch (_that) {
case _RemoveInitial():
return initial(_that);case _RemoveSuccess():
return success(_that);case _RemoveFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _RemoveInitial value)?  initial,TResult? Function( _RemoveSuccess value)?  success,TResult? Function( _RemoveFailure value)?  failure,}){
final _that = this;
switch (_that) {
case _RemoveInitial() when initial != null:
return initial(_that);case _RemoveSuccess() when success != null:
return success(_that);case _RemoveFailure() when failure != null:
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
case _RemoveInitial() when initial != null:
return initial();case _RemoveSuccess() when success != null:
return success(_that.message);case _RemoveFailure() when failure != null:
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
case _RemoveInitial():
return initial();case _RemoveSuccess():
return success(_that.message);case _RemoveFailure():
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
case _RemoveInitial() when initial != null:
return initial();case _RemoveSuccess() when success != null:
return success(_that.message);case _RemoveFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _RemoveInitial implements RemoveStatus {
  const _RemoveInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RemoveStatus.initial()';
}


}




/// @nodoc


class _RemoveSuccess implements RemoveStatus {
  const _RemoveSuccess(this.message);
  

 final  String message;

/// Create a copy of RemoveStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveSuccessCopyWith<_RemoveSuccess> get copyWith => __$RemoveSuccessCopyWithImpl<_RemoveSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'RemoveStatus.success(message: $message)';
}


}

/// @nodoc
abstract mixin class _$RemoveSuccessCopyWith<$Res> implements $RemoveStatusCopyWith<$Res> {
  factory _$RemoveSuccessCopyWith(_RemoveSuccess value, $Res Function(_RemoveSuccess) _then) = __$RemoveSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$RemoveSuccessCopyWithImpl<$Res>
    implements _$RemoveSuccessCopyWith<$Res> {
  __$RemoveSuccessCopyWithImpl(this._self, this._then);

  final _RemoveSuccess _self;
  final $Res Function(_RemoveSuccess) _then;

/// Create a copy of RemoveStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_RemoveSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RemoveFailure implements RemoveStatus {
  const _RemoveFailure(this.message);
  

 final  String message;

/// Create a copy of RemoveStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveFailureCopyWith<_RemoveFailure> get copyWith => __$RemoveFailureCopyWithImpl<_RemoveFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'RemoveStatus.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$RemoveFailureCopyWith<$Res> implements $RemoveStatusCopyWith<$Res> {
  factory _$RemoveFailureCopyWith(_RemoveFailure value, $Res Function(_RemoveFailure) _then) = __$RemoveFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$RemoveFailureCopyWithImpl<$Res>
    implements _$RemoveFailureCopyWith<$Res> {
  __$RemoveFailureCopyWithImpl(this._self, this._then);

  final _RemoveFailure _self;
  final $Res Function(_RemoveFailure) _then;

/// Create a copy of RemoveStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_RemoveFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$FavoriteState {

 FavoriteStatus get status; RemoveStatus get removeStatus; String get lang; List<ItemModel> get items;
/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteStateCopyWith<FavoriteState> get copyWith => _$FavoriteStateCopyWithImpl<FavoriteState>(this as FavoriteState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteState&&(identical(other.status, status) || other.status == status)&&(identical(other.removeStatus, removeStatus) || other.removeStatus == removeStatus)&&(identical(other.lang, lang) || other.lang == lang)&&const DeepCollectionEquality().equals(other.items, items));
}


@override
int get hashCode => Object.hash(runtimeType,status,removeStatus,lang,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'FavoriteState(status: $status, removeStatus: $removeStatus, lang: $lang, items: $items)';
}


}

/// @nodoc
abstract mixin class $FavoriteStateCopyWith<$Res>  {
  factory $FavoriteStateCopyWith(FavoriteState value, $Res Function(FavoriteState) _then) = _$FavoriteStateCopyWithImpl;
@useResult
$Res call({
 FavoriteStatus status, RemoveStatus removeStatus, String lang, List<ItemModel> items
});


$FavoriteStatusCopyWith<$Res> get status;$RemoveStatusCopyWith<$Res> get removeStatus;

}
/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._self, this._then);

  final FavoriteState _self;
  final $Res Function(FavoriteState) _then;

/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? removeStatus = null,Object? lang = null,Object? items = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FavoriteStatus,removeStatus: null == removeStatus ? _self.removeStatus : removeStatus // ignore: cast_nullable_to_non_nullable
as RemoveStatus,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,
  ));
}
/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FavoriteStatusCopyWith<$Res> get status {
  
  return $FavoriteStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RemoveStatusCopyWith<$Res> get removeStatus {
  
  return $RemoveStatusCopyWith<$Res>(_self.removeStatus, (value) {
    return _then(_self.copyWith(removeStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [FavoriteState].
extension FavoriteStatePatterns on FavoriteState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteState value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteState value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FavoriteStatus status,  RemoveStatus removeStatus,  String lang,  List<ItemModel> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteState() when $default != null:
return $default(_that.status,_that.removeStatus,_that.lang,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FavoriteStatus status,  RemoveStatus removeStatus,  String lang,  List<ItemModel> items)  $default,) {final _that = this;
switch (_that) {
case _FavoriteState():
return $default(_that.status,_that.removeStatus,_that.lang,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FavoriteStatus status,  RemoveStatus removeStatus,  String lang,  List<ItemModel> items)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteState() when $default != null:
return $default(_that.status,_that.removeStatus,_that.lang,_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _FavoriteState implements FavoriteState {
  const _FavoriteState({this.status = const FavoriteStatus.initial(), this.removeStatus = const RemoveStatus.initial(), this.lang = "en", final  List<ItemModel> items = const []}): _items = items;
  

@override@JsonKey() final  FavoriteStatus status;
@override@JsonKey() final  RemoveStatus removeStatus;
@override@JsonKey() final  String lang;
 final  List<ItemModel> _items;
@override@JsonKey() List<ItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteStateCopyWith<_FavoriteState> get copyWith => __$FavoriteStateCopyWithImpl<_FavoriteState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteState&&(identical(other.status, status) || other.status == status)&&(identical(other.removeStatus, removeStatus) || other.removeStatus == removeStatus)&&(identical(other.lang, lang) || other.lang == lang)&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,status,removeStatus,lang,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'FavoriteState(status: $status, removeStatus: $removeStatus, lang: $lang, items: $items)';
}


}

/// @nodoc
abstract mixin class _$FavoriteStateCopyWith<$Res> implements $FavoriteStateCopyWith<$Res> {
  factory _$FavoriteStateCopyWith(_FavoriteState value, $Res Function(_FavoriteState) _then) = __$FavoriteStateCopyWithImpl;
@override @useResult
$Res call({
 FavoriteStatus status, RemoveStatus removeStatus, String lang, List<ItemModel> items
});


@override $FavoriteStatusCopyWith<$Res> get status;@override $RemoveStatusCopyWith<$Res> get removeStatus;

}
/// @nodoc
class __$FavoriteStateCopyWithImpl<$Res>
    implements _$FavoriteStateCopyWith<$Res> {
  __$FavoriteStateCopyWithImpl(this._self, this._then);

  final _FavoriteState _self;
  final $Res Function(_FavoriteState) _then;

/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? removeStatus = null,Object? lang = null,Object? items = null,}) {
  return _then(_FavoriteState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FavoriteStatus,removeStatus: null == removeStatus ? _self.removeStatus : removeStatus // ignore: cast_nullable_to_non_nullable
as RemoveStatus,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,
  ));
}

/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FavoriteStatusCopyWith<$Res> get status {
  
  return $FavoriteStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RemoveStatusCopyWith<$Res> get removeStatus {
  
  return $RemoveStatusCopyWith<$Res>(_self.removeStatus, (value) {
    return _then(_self.copyWith(removeStatus: value));
  });
}
}

// dart format on
