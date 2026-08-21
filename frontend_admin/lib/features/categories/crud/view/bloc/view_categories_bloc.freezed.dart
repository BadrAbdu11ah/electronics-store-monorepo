// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ViewCategoriesStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ViewCategoriesStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ViewCategoriesStatus()';
}


}

/// @nodoc
class $ViewCategoriesStatusCopyWith<$Res>  {
$ViewCategoriesStatusCopyWith(ViewCategoriesStatus _, $Res Function(ViewCategoriesStatus) __);
}


/// Adds pattern-matching-related methods to [ViewCategoriesStatus].
extension ViewCategoriesStatusPatterns on ViewCategoriesStatus {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<CategoryModel> categories)?  loaded,TResult Function( String message)?  serverFailure,TResult Function( String message)?  empty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.categories);case _ServerFailure() when serverFailure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<CategoryModel> categories)  loaded,required TResult Function( String message)  serverFailure,required TResult Function( String message)  empty,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.categories);case _ServerFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<CategoryModel> categories)?  loaded,TResult? Function( String message)?  serverFailure,TResult? Function( String message)?  empty,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.categories);case _ServerFailure() when serverFailure != null:
return serverFailure(_that.message);case _Empty() when empty != null:
return empty(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ViewCategoriesStatus {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ViewCategoriesStatus.initial()';
}


}




/// @nodoc


class _Loading implements ViewCategoriesStatus {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ViewCategoriesStatus.loading()';
}


}




/// @nodoc


class _Loaded implements ViewCategoriesStatus {
  const _Loaded({final  List<CategoryModel> categories = const []}): _categories = categories;
  

 final  List<CategoryModel> _categories;
@JsonKey() List<CategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of ViewCategoriesStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._categories, _categories));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'ViewCategoriesStatus.loaded(categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $ViewCategoriesStatusCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<CategoryModel> categories
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of ViewCategoriesStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categories = null,}) {
  return _then(_Loaded(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,
  ));
}


}

/// @nodoc


class _ServerFailure implements ViewCategoriesStatus {
  const _ServerFailure(this.message);
  

 final  String message;

/// Create a copy of ViewCategoriesStatus
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
  return 'ViewCategoriesStatus.serverFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ServerFailureCopyWith<$Res> implements $ViewCategoriesStatusCopyWith<$Res> {
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

/// Create a copy of ViewCategoriesStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ServerFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Empty implements ViewCategoriesStatus {
  const _Empty(this.message);
  

 final  String message;

/// Create a copy of ViewCategoriesStatus
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
  return 'ViewCategoriesStatus.empty(message: $message)';
}


}

/// @nodoc
abstract mixin class _$EmptyCopyWith<$Res> implements $ViewCategoriesStatusCopyWith<$Res> {
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

/// Create a copy of ViewCategoriesStatus
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
mixin _$ViewCategoriesState {

 ViewCategoriesStatus get status; SnackBarStatus get snackBarStatus;
/// Create a copy of ViewCategoriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ViewCategoriesStateCopyWith<ViewCategoriesState> get copyWith => _$ViewCategoriesStateCopyWithImpl<ViewCategoriesState>(this as ViewCategoriesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ViewCategoriesState&&(identical(other.status, status) || other.status == status)&&(identical(other.snackBarStatus, snackBarStatus) || other.snackBarStatus == snackBarStatus));
}


@override
int get hashCode => Object.hash(runtimeType,status,snackBarStatus);

@override
String toString() {
  return 'ViewCategoriesState(status: $status, snackBarStatus: $snackBarStatus)';
}


}

/// @nodoc
abstract mixin class $ViewCategoriesStateCopyWith<$Res>  {
  factory $ViewCategoriesStateCopyWith(ViewCategoriesState value, $Res Function(ViewCategoriesState) _then) = _$ViewCategoriesStateCopyWithImpl;
@useResult
$Res call({
 ViewCategoriesStatus status, SnackBarStatus snackBarStatus
});


$ViewCategoriesStatusCopyWith<$Res> get status;$SnackBarStatusCopyWith<$Res> get snackBarStatus;

}
/// @nodoc
class _$ViewCategoriesStateCopyWithImpl<$Res>
    implements $ViewCategoriesStateCopyWith<$Res> {
  _$ViewCategoriesStateCopyWithImpl(this._self, this._then);

  final ViewCategoriesState _self;
  final $Res Function(ViewCategoriesState) _then;

/// Create a copy of ViewCategoriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? snackBarStatus = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ViewCategoriesStatus,snackBarStatus: null == snackBarStatus ? _self.snackBarStatus : snackBarStatus // ignore: cast_nullable_to_non_nullable
as SnackBarStatus,
  ));
}
/// Create a copy of ViewCategoriesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ViewCategoriesStatusCopyWith<$Res> get status {
  
  return $ViewCategoriesStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ViewCategoriesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SnackBarStatusCopyWith<$Res> get snackBarStatus {
  
  return $SnackBarStatusCopyWith<$Res>(_self.snackBarStatus, (value) {
    return _then(_self.copyWith(snackBarStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [ViewCategoriesState].
extension ViewCategoriesStatePatterns on ViewCategoriesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ViewCategoriesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ViewCategoriesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ViewCategoriesState value)  $default,){
final _that = this;
switch (_that) {
case _ViewCategoriesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ViewCategoriesState value)?  $default,){
final _that = this;
switch (_that) {
case _ViewCategoriesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ViewCategoriesStatus status,  SnackBarStatus snackBarStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ViewCategoriesState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ViewCategoriesStatus status,  SnackBarStatus snackBarStatus)  $default,) {final _that = this;
switch (_that) {
case _ViewCategoriesState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ViewCategoriesStatus status,  SnackBarStatus snackBarStatus)?  $default,) {final _that = this;
switch (_that) {
case _ViewCategoriesState() when $default != null:
return $default(_that.status,_that.snackBarStatus);case _:
  return null;

}
}

}

/// @nodoc


class _ViewCategoriesState implements ViewCategoriesState {
  const _ViewCategoriesState({this.status = const ViewCategoriesStatus.initial(), this.snackBarStatus = const SnackBarStatus.initial()});
  

@override@JsonKey() final  ViewCategoriesStatus status;
@override@JsonKey() final  SnackBarStatus snackBarStatus;

/// Create a copy of ViewCategoriesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ViewCategoriesStateCopyWith<_ViewCategoriesState> get copyWith => __$ViewCategoriesStateCopyWithImpl<_ViewCategoriesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ViewCategoriesState&&(identical(other.status, status) || other.status == status)&&(identical(other.snackBarStatus, snackBarStatus) || other.snackBarStatus == snackBarStatus));
}


@override
int get hashCode => Object.hash(runtimeType,status,snackBarStatus);

@override
String toString() {
  return 'ViewCategoriesState(status: $status, snackBarStatus: $snackBarStatus)';
}


}

/// @nodoc
abstract mixin class _$ViewCategoriesStateCopyWith<$Res> implements $ViewCategoriesStateCopyWith<$Res> {
  factory _$ViewCategoriesStateCopyWith(_ViewCategoriesState value, $Res Function(_ViewCategoriesState) _then) = __$ViewCategoriesStateCopyWithImpl;
@override @useResult
$Res call({
 ViewCategoriesStatus status, SnackBarStatus snackBarStatus
});


@override $ViewCategoriesStatusCopyWith<$Res> get status;@override $SnackBarStatusCopyWith<$Res> get snackBarStatus;

}
/// @nodoc
class __$ViewCategoriesStateCopyWithImpl<$Res>
    implements _$ViewCategoriesStateCopyWith<$Res> {
  __$ViewCategoriesStateCopyWithImpl(this._self, this._then);

  final _ViewCategoriesState _self;
  final $Res Function(_ViewCategoriesState) _then;

/// Create a copy of ViewCategoriesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? snackBarStatus = null,}) {
  return _then(_ViewCategoriesState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ViewCategoriesStatus,snackBarStatus: null == snackBarStatus ? _self.snackBarStatus : snackBarStatus // ignore: cast_nullable_to_non_nullable
as SnackBarStatus,
  ));
}

/// Create a copy of ViewCategoriesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ViewCategoriesStatusCopyWith<$Res> get status {
  
  return $ViewCategoriesStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ViewCategoriesState
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
mixin _$ViewCategoriesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ViewCategoriesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ViewCategoriesEvent()';
}


}

/// @nodoc
class $ViewCategoriesEventCopyWith<$Res>  {
$ViewCategoriesEventCopyWith(ViewCategoriesEvent _, $Res Function(ViewCategoriesEvent) __);
}


/// Adds pattern-matching-related methods to [ViewCategoriesEvent].
extension ViewCategoriesEventPatterns on ViewCategoriesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchCategories value)?  fetchCategories,TResult Function( _DeleteCategory value)?  deleteCategory,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchCategories() when fetchCategories != null:
return fetchCategories(_that);case _DeleteCategory() when deleteCategory != null:
return deleteCategory(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchCategories value)  fetchCategories,required TResult Function( _DeleteCategory value)  deleteCategory,}){
final _that = this;
switch (_that) {
case _FetchCategories():
return fetchCategories(_that);case _DeleteCategory():
return deleteCategory(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchCategories value)?  fetchCategories,TResult? Function( _DeleteCategory value)?  deleteCategory,}){
final _that = this;
switch (_that) {
case _FetchCategories() when fetchCategories != null:
return fetchCategories(_that);case _DeleteCategory() when deleteCategory != null:
return deleteCategory(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchCategories,TResult Function( int categoryId)?  deleteCategory,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchCategories() when fetchCategories != null:
return fetchCategories();case _DeleteCategory() when deleteCategory != null:
return deleteCategory(_that.categoryId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchCategories,required TResult Function( int categoryId)  deleteCategory,}) {final _that = this;
switch (_that) {
case _FetchCategories():
return fetchCategories();case _DeleteCategory():
return deleteCategory(_that.categoryId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchCategories,TResult? Function( int categoryId)?  deleteCategory,}) {final _that = this;
switch (_that) {
case _FetchCategories() when fetchCategories != null:
return fetchCategories();case _DeleteCategory() when deleteCategory != null:
return deleteCategory(_that.categoryId);case _:
  return null;

}
}

}

/// @nodoc


class _FetchCategories implements ViewCategoriesEvent {
  const _FetchCategories();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchCategories);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ViewCategoriesEvent.fetchCategories()';
}


}




/// @nodoc


class _DeleteCategory implements ViewCategoriesEvent {
  const _DeleteCategory(this.categoryId);
  

 final  int categoryId;

/// Create a copy of ViewCategoriesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteCategoryCopyWith<_DeleteCategory> get copyWith => __$DeleteCategoryCopyWithImpl<_DeleteCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteCategory&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId);

@override
String toString() {
  return 'ViewCategoriesEvent.deleteCategory(categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class _$DeleteCategoryCopyWith<$Res> implements $ViewCategoriesEventCopyWith<$Res> {
  factory _$DeleteCategoryCopyWith(_DeleteCategory value, $Res Function(_DeleteCategory) _then) = __$DeleteCategoryCopyWithImpl;
@useResult
$Res call({
 int categoryId
});




}
/// @nodoc
class __$DeleteCategoryCopyWithImpl<$Res>
    implements _$DeleteCategoryCopyWith<$Res> {
  __$DeleteCategoryCopyWithImpl(this._self, this._then);

  final _DeleteCategory _self;
  final $Res Function(_DeleteCategory) _then;

/// Create a copy of ViewCategoriesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = null,}) {
  return _then(_DeleteCategory(
null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
