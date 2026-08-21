// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_items_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ViewItemsStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ViewItemsStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ViewItemsStatus()';
}


}

/// @nodoc
class $ViewItemsStatusCopyWith<$Res>  {
$ViewItemsStatusCopyWith(ViewItemsStatus _, $Res Function(ViewItemsStatus) __);
}


/// Adds pattern-matching-related methods to [ViewItemsStatus].
extension ViewItemsStatusPatterns on ViewItemsStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _ServerFailure value)?  serverFailure,TResult Function( _Empty value)?  empty,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _ServerFailure() when serverFailure != null:
return serverFailure(_that);case _Empty() when empty != null:
return empty(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _ServerFailure value)  serverFailure,required TResult Function( _Empty value)  empty,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _ServerFailure():
return serverFailure(_that);case _Empty():
return empty(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _ServerFailure value)?  serverFailure,TResult? Function( _Empty value)?  empty,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _ServerFailure() when serverFailure != null:
return serverFailure(_that);case _Empty() when empty != null:
return empty(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<ItemModel> items)?  loaded,TResult Function( String message)?  serverFailure,TResult Function( String message)?  empty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.items);case _ServerFailure() when serverFailure != null:
return serverFailure(_that.message);case _Empty() when empty != null:
return empty(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<ItemModel> items)  loaded,required TResult Function( String message)  serverFailure,required TResult Function( String message)  empty,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.items);case _ServerFailure():
return serverFailure(_that.message);case _Empty():
return empty(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<ItemModel> items)?  loaded,TResult? Function( String message)?  serverFailure,TResult? Function( String message)?  empty,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.items);case _ServerFailure() when serverFailure != null:
return serverFailure(_that.message);case _Empty() when empty != null:
return empty(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ViewItemsStatus {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ViewItemsStatus.initial()';
}


}




/// @nodoc


class _Loading implements ViewItemsStatus {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ViewItemsStatus.loading()';
}


}




/// @nodoc


class _Loaded implements ViewItemsStatus {
  const _Loaded({final  List<ItemModel> items = const []}): _items = items;
  

 final  List<ItemModel> _items;
@JsonKey() List<ItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of ViewItemsStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'ViewItemsStatus.loaded(items: $items)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $ViewItemsStatusCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<ItemModel> items
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of ViewItemsStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_Loaded(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,
  ));
}


}

/// @nodoc


class _ServerFailure implements ViewItemsStatus {
  const _ServerFailure(this.message);
  

 final  String message;

/// Create a copy of ViewItemsStatus
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
  return 'ViewItemsStatus.serverFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ServerFailureCopyWith<$Res> implements $ViewItemsStatusCopyWith<$Res> {
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

/// Create a copy of ViewItemsStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ServerFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Empty implements ViewItemsStatus {
  const _Empty(this.message);
  

 final  String message;

/// Create a copy of ViewItemsStatus
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
  return 'ViewItemsStatus.empty(message: $message)';
}


}

/// @nodoc
abstract mixin class _$EmptyCopyWith<$Res> implements $ViewItemsStatusCopyWith<$Res> {
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

/// Create a copy of ViewItemsStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Empty(
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SnackBarInitial value)?  initial,TResult Function( _SnackBarShow value)?  show,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SnackBarInitial() when initial != null:
return initial(_that);case _SnackBarShow() when show != null:
return show(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SnackBarInitial value)  initial,required TResult Function( _SnackBarShow value)  show,}){
final _that = this;
switch (_that) {
case _SnackBarInitial():
return initial(_that);case _SnackBarShow():
return show(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SnackBarInitial value)?  initial,TResult? Function( _SnackBarShow value)?  show,}){
final _that = this;
switch (_that) {
case _SnackBarInitial() when initial != null:
return initial(_that);case _SnackBarShow() when show != null:
return show(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( String message)?  show,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SnackBarInitial() when initial != null:
return initial();case _SnackBarShow() when show != null:
return show(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( String message)  show,}) {final _that = this;
switch (_that) {
case _SnackBarInitial():
return initial();case _SnackBarShow():
return show(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( String message)?  show,}) {final _that = this;
switch (_that) {
case _SnackBarInitial() when initial != null:
return initial();case _SnackBarShow() when show != null:
return show(_that.message);case _:
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


class _SnackBarShow implements SnackBarStatus {
  const _SnackBarShow(this.message);
  

 final  String message;

/// Create a copy of SnackBarStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SnackBarShowCopyWith<_SnackBarShow> get copyWith => __$SnackBarShowCopyWithImpl<_SnackBarShow>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SnackBarShow&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SnackBarStatus.show(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SnackBarShowCopyWith<$Res> implements $SnackBarStatusCopyWith<$Res> {
  factory _$SnackBarShowCopyWith(_SnackBarShow value, $Res Function(_SnackBarShow) _then) = __$SnackBarShowCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$SnackBarShowCopyWithImpl<$Res>
    implements _$SnackBarShowCopyWith<$Res> {
  __$SnackBarShowCopyWithImpl(this._self, this._then);

  final _SnackBarShow _self;
  final $Res Function(_SnackBarShow) _then;

/// Create a copy of SnackBarStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_SnackBarShow(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ViewItemsState {

 ViewItemsStatus get status; SnackBarStatus get snackBarStatus;
/// Create a copy of ViewItemsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ViewItemsStateCopyWith<ViewItemsState> get copyWith => _$ViewItemsStateCopyWithImpl<ViewItemsState>(this as ViewItemsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ViewItemsState&&(identical(other.status, status) || other.status == status)&&(identical(other.snackBarStatus, snackBarStatus) || other.snackBarStatus == snackBarStatus));
}


@override
int get hashCode => Object.hash(runtimeType,status,snackBarStatus);

@override
String toString() {
  return 'ViewItemsState(status: $status, snackBarStatus: $snackBarStatus)';
}


}

/// @nodoc
abstract mixin class $ViewItemsStateCopyWith<$Res>  {
  factory $ViewItemsStateCopyWith(ViewItemsState value, $Res Function(ViewItemsState) _then) = _$ViewItemsStateCopyWithImpl;
@useResult
$Res call({
 ViewItemsStatus status, SnackBarStatus snackBarStatus
});


$ViewItemsStatusCopyWith<$Res> get status;$SnackBarStatusCopyWith<$Res> get snackBarStatus;

}
/// @nodoc
class _$ViewItemsStateCopyWithImpl<$Res>
    implements $ViewItemsStateCopyWith<$Res> {
  _$ViewItemsStateCopyWithImpl(this._self, this._then);

  final ViewItemsState _self;
  final $Res Function(ViewItemsState) _then;

/// Create a copy of ViewItemsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? snackBarStatus = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ViewItemsStatus,snackBarStatus: null == snackBarStatus ? _self.snackBarStatus : snackBarStatus // ignore: cast_nullable_to_non_nullable
as SnackBarStatus,
  ));
}
/// Create a copy of ViewItemsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ViewItemsStatusCopyWith<$Res> get status {
  
  return $ViewItemsStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ViewItemsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SnackBarStatusCopyWith<$Res> get snackBarStatus {
  
  return $SnackBarStatusCopyWith<$Res>(_self.snackBarStatus, (value) {
    return _then(_self.copyWith(snackBarStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [ViewItemsState].
extension ViewItemsStatePatterns on ViewItemsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ViewItemsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ViewItemsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ViewItemsState value)  $default,){
final _that = this;
switch (_that) {
case _ViewItemsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ViewItemsState value)?  $default,){
final _that = this;
switch (_that) {
case _ViewItemsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ViewItemsStatus status,  SnackBarStatus snackBarStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ViewItemsState() when $default != null:
return $default(_that.status,_that.snackBarStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ViewItemsStatus status,  SnackBarStatus snackBarStatus)  $default,) {final _that = this;
switch (_that) {
case _ViewItemsState():
return $default(_that.status,_that.snackBarStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ViewItemsStatus status,  SnackBarStatus snackBarStatus)?  $default,) {final _that = this;
switch (_that) {
case _ViewItemsState() when $default != null:
return $default(_that.status,_that.snackBarStatus);case _:
  return null;

}
}

}

/// @nodoc


class _ViewItemsState implements ViewItemsState {
  const _ViewItemsState({this.status = const ViewItemsStatus.initial(), this.snackBarStatus = const SnackBarStatus.initial()});
  

@override@JsonKey() final  ViewItemsStatus status;
@override@JsonKey() final  SnackBarStatus snackBarStatus;

/// Create a copy of ViewItemsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ViewItemsStateCopyWith<_ViewItemsState> get copyWith => __$ViewItemsStateCopyWithImpl<_ViewItemsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ViewItemsState&&(identical(other.status, status) || other.status == status)&&(identical(other.snackBarStatus, snackBarStatus) || other.snackBarStatus == snackBarStatus));
}


@override
int get hashCode => Object.hash(runtimeType,status,snackBarStatus);

@override
String toString() {
  return 'ViewItemsState(status: $status, snackBarStatus: $snackBarStatus)';
}


}

/// @nodoc
abstract mixin class _$ViewItemsStateCopyWith<$Res> implements $ViewItemsStateCopyWith<$Res> {
  factory _$ViewItemsStateCopyWith(_ViewItemsState value, $Res Function(_ViewItemsState) _then) = __$ViewItemsStateCopyWithImpl;
@override @useResult
$Res call({
 ViewItemsStatus status, SnackBarStatus snackBarStatus
});


@override $ViewItemsStatusCopyWith<$Res> get status;@override $SnackBarStatusCopyWith<$Res> get snackBarStatus;

}
/// @nodoc
class __$ViewItemsStateCopyWithImpl<$Res>
    implements _$ViewItemsStateCopyWith<$Res> {
  __$ViewItemsStateCopyWithImpl(this._self, this._then);

  final _ViewItemsState _self;
  final $Res Function(_ViewItemsState) _then;

/// Create a copy of ViewItemsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? snackBarStatus = null,}) {
  return _then(_ViewItemsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ViewItemsStatus,snackBarStatus: null == snackBarStatus ? _self.snackBarStatus : snackBarStatus // ignore: cast_nullable_to_non_nullable
as SnackBarStatus,
  ));
}

/// Create a copy of ViewItemsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ViewItemsStatusCopyWith<$Res> get status {
  
  return $ViewItemsStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ViewItemsState
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
mixin _$ViewItemsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ViewItemsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ViewItemsEvent()';
}


}

/// @nodoc
class $ViewItemsEventCopyWith<$Res>  {
$ViewItemsEventCopyWith(ViewItemsEvent _, $Res Function(ViewItemsEvent) __);
}


/// Adds pattern-matching-related methods to [ViewItemsEvent].
extension ViewItemsEventPatterns on ViewItemsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Fetchitems value)?  fetchitems,TResult Function( _Deleteitem value)?  deleteitem,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Fetchitems() when fetchitems != null:
return fetchitems(_that);case _Deleteitem() when deleteitem != null:
return deleteitem(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Fetchitems value)  fetchitems,required TResult Function( _Deleteitem value)  deleteitem,}){
final _that = this;
switch (_that) {
case _Fetchitems():
return fetchitems(_that);case _Deleteitem():
return deleteitem(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Fetchitems value)?  fetchitems,TResult? Function( _Deleteitem value)?  deleteitem,}){
final _that = this;
switch (_that) {
case _Fetchitems() when fetchitems != null:
return fetchitems(_that);case _Deleteitem() when deleteitem != null:
return deleteitem(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchitems,TResult Function( int itemId)?  deleteitem,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fetchitems() when fetchitems != null:
return fetchitems();case _Deleteitem() when deleteitem != null:
return deleteitem(_that.itemId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchitems,required TResult Function( int itemId)  deleteitem,}) {final _that = this;
switch (_that) {
case _Fetchitems():
return fetchitems();case _Deleteitem():
return deleteitem(_that.itemId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchitems,TResult? Function( int itemId)?  deleteitem,}) {final _that = this;
switch (_that) {
case _Fetchitems() when fetchitems != null:
return fetchitems();case _Deleteitem() when deleteitem != null:
return deleteitem(_that.itemId);case _:
  return null;

}
}

}

/// @nodoc


class _Fetchitems implements ViewItemsEvent {
  const _Fetchitems();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetchitems);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ViewItemsEvent.fetchitems()';
}


}




/// @nodoc


class _Deleteitem implements ViewItemsEvent {
  const _Deleteitem(this.itemId);
  

 final  int itemId;

/// Create a copy of ViewItemsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteitemCopyWith<_Deleteitem> get copyWith => __$DeleteitemCopyWithImpl<_Deleteitem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Deleteitem&&(identical(other.itemId, itemId) || other.itemId == itemId));
}


@override
int get hashCode => Object.hash(runtimeType,itemId);

@override
String toString() {
  return 'ViewItemsEvent.deleteitem(itemId: $itemId)';
}


}

/// @nodoc
abstract mixin class _$DeleteitemCopyWith<$Res> implements $ViewItemsEventCopyWith<$Res> {
  factory _$DeleteitemCopyWith(_Deleteitem value, $Res Function(_Deleteitem) _then) = __$DeleteitemCopyWithImpl;
@useResult
$Res call({
 int itemId
});




}
/// @nodoc
class __$DeleteitemCopyWithImpl<$Res>
    implements _$DeleteitemCopyWith<$Res> {
  __$DeleteitemCopyWithImpl(this._self, this._then);

  final _Deleteitem _self;
  final $Res Function(_Deleteitem) _then;

/// Create a copy of ViewItemsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? itemId = null,}) {
  return _then(_Deleteitem(
null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
