// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditItemStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditItemStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditItemStatus()';
}


}

/// @nodoc
class $EditItemStatusCopyWith<$Res>  {
$EditItemStatusCopyWith(EditItemStatus _, $Res Function(EditItemStatus) __);
}


/// Adds pattern-matching-related methods to [EditItemStatus].
extension EditItemStatusPatterns on EditItemStatus {
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


class _Initial implements EditItemStatus {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditItemStatus.initial()';
}


}




/// @nodoc


class _Loading implements EditItemStatus {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditItemStatus.loading()';
}


}




/// @nodoc


class _Success implements EditItemStatus {
  const _Success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditItemStatus.success()';
}


}




/// @nodoc


class _ServerFailure implements EditItemStatus {
  const _ServerFailure(this.message);
  

 final  String message;

/// Create a copy of EditItemStatus
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
  return 'EditItemStatus.serverFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ServerFailureCopyWith<$Res> implements $EditItemStatusCopyWith<$Res> {
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

/// Create a copy of EditItemStatus
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
mixin _$CategoriesStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoriesStatus()';
}


}

/// @nodoc
class $CategoriesStatusCopyWith<$Res>  {
$CategoriesStatusCopyWith(CategoriesStatus _, $Res Function(CategoriesStatus) __);
}


/// Adds pattern-matching-related methods to [CategoriesStatus].
extension CategoriesStatusPatterns on CategoriesStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CategoriesInitial value)?  initial,TResult Function( _CategoriesLoading value)?  loading,TResult Function( _CategoriesLoaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoriesInitial() when initial != null:
return initial(_that);case _CategoriesLoading() when loading != null:
return loading(_that);case _CategoriesLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CategoriesInitial value)  initial,required TResult Function( _CategoriesLoading value)  loading,required TResult Function( _CategoriesLoaded value)  loaded,}){
final _that = this;
switch (_that) {
case _CategoriesInitial():
return initial(_that);case _CategoriesLoading():
return loading(_that);case _CategoriesLoaded():
return loaded(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CategoriesInitial value)?  initial,TResult? Function( _CategoriesLoading value)?  loading,TResult? Function( _CategoriesLoaded value)?  loaded,}){
final _that = this;
switch (_that) {
case _CategoriesInitial() when initial != null:
return initial(_that);case _CategoriesLoading() when loading != null:
return loading(_that);case _CategoriesLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<CategoryModel> categories)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoriesInitial() when initial != null:
return initial();case _CategoriesLoading() when loading != null:
return loading();case _CategoriesLoaded() when loaded != null:
return loaded(_that.categories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<CategoryModel> categories)  loaded,}) {final _that = this;
switch (_that) {
case _CategoriesInitial():
return initial();case _CategoriesLoading():
return loading();case _CategoriesLoaded():
return loaded(_that.categories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<CategoryModel> categories)?  loaded,}) {final _that = this;
switch (_that) {
case _CategoriesInitial() when initial != null:
return initial();case _CategoriesLoading() when loading != null:
return loading();case _CategoriesLoaded() when loaded != null:
return loaded(_that.categories);case _:
  return null;

}
}

}

/// @nodoc


class _CategoriesInitial implements CategoriesStatus {
  const _CategoriesInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoriesInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoriesStatus.initial()';
}


}




/// @nodoc


class _CategoriesLoading implements CategoriesStatus {
  const _CategoriesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoriesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoriesStatus.loading()';
}


}




/// @nodoc


class _CategoriesLoaded implements CategoriesStatus {
  const _CategoriesLoaded(final  List<CategoryModel> categories): _categories = categories;
  

 final  List<CategoryModel> _categories;
 List<CategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of CategoriesStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoriesLoadedCopyWith<_CategoriesLoaded> get copyWith => __$CategoriesLoadedCopyWithImpl<_CategoriesLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoriesLoaded&&const DeepCollectionEquality().equals(other._categories, _categories));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'CategoriesStatus.loaded(categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$CategoriesLoadedCopyWith<$Res> implements $CategoriesStatusCopyWith<$Res> {
  factory _$CategoriesLoadedCopyWith(_CategoriesLoaded value, $Res Function(_CategoriesLoaded) _then) = __$CategoriesLoadedCopyWithImpl;
@useResult
$Res call({
 List<CategoryModel> categories
});




}
/// @nodoc
class __$CategoriesLoadedCopyWithImpl<$Res>
    implements _$CategoriesLoadedCopyWith<$Res> {
  __$CategoriesLoadedCopyWithImpl(this._self, this._then);

  final _CategoriesLoaded _self;
  final $Res Function(_CategoriesLoaded) _then;

/// Create a copy of CategoriesStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categories = null,}) {
  return _then(_CategoriesLoaded(
null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,
  ));
}


}

/// @nodoc
mixin _$EditItemState {

 EditItemStatus get status; SnackBarStatus get snackBarStatus; CategoriesStatus get categoriesStatus; File? get image; int? get active; CategoryModel? get category;
/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditItemStateCopyWith<EditItemState> get copyWith => _$EditItemStateCopyWithImpl<EditItemState>(this as EditItemState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditItemState&&(identical(other.status, status) || other.status == status)&&(identical(other.snackBarStatus, snackBarStatus) || other.snackBarStatus == snackBarStatus)&&(identical(other.categoriesStatus, categoriesStatus) || other.categoriesStatus == categoriesStatus)&&(identical(other.image, image) || other.image == image)&&(identical(other.active, active) || other.active == active)&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,status,snackBarStatus,categoriesStatus,image,active,category);

@override
String toString() {
  return 'EditItemState(status: $status, snackBarStatus: $snackBarStatus, categoriesStatus: $categoriesStatus, image: $image, active: $active, category: $category)';
}


}

/// @nodoc
abstract mixin class $EditItemStateCopyWith<$Res>  {
  factory $EditItemStateCopyWith(EditItemState value, $Res Function(EditItemState) _then) = _$EditItemStateCopyWithImpl;
@useResult
$Res call({
 EditItemStatus status, SnackBarStatus snackBarStatus, CategoriesStatus categoriesStatus, File? image, int? active, CategoryModel? category
});


$EditItemStatusCopyWith<$Res> get status;$SnackBarStatusCopyWith<$Res> get snackBarStatus;$CategoriesStatusCopyWith<$Res> get categoriesStatus;$CategoryModelCopyWith<$Res>? get category;

}
/// @nodoc
class _$EditItemStateCopyWithImpl<$Res>
    implements $EditItemStateCopyWith<$Res> {
  _$EditItemStateCopyWithImpl(this._self, this._then);

  final EditItemState _self;
  final $Res Function(EditItemState) _then;

/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? snackBarStatus = null,Object? categoriesStatus = null,Object? image = freezed,Object? active = freezed,Object? category = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EditItemStatus,snackBarStatus: null == snackBarStatus ? _self.snackBarStatus : snackBarStatus // ignore: cast_nullable_to_non_nullable
as SnackBarStatus,categoriesStatus: null == categoriesStatus ? _self.categoriesStatus : categoriesStatus // ignore: cast_nullable_to_non_nullable
as CategoriesStatus,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as File?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as int?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryModel?,
  ));
}
/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EditItemStatusCopyWith<$Res> get status {
  
  return $EditItemStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SnackBarStatusCopyWith<$Res> get snackBarStatus {
  
  return $SnackBarStatusCopyWith<$Res>(_self.snackBarStatus, (value) {
    return _then(_self.copyWith(snackBarStatus: value));
  });
}/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoriesStatusCopyWith<$Res> get categoriesStatus {
  
  return $CategoriesStatusCopyWith<$Res>(_self.categoriesStatus, (value) {
    return _then(_self.copyWith(categoriesStatus: value));
  });
}/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryModelCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [EditItemState].
extension EditItemStatePatterns on EditItemState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditItemState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditItemState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditItemState value)  $default,){
final _that = this;
switch (_that) {
case _EditItemState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditItemState value)?  $default,){
final _that = this;
switch (_that) {
case _EditItemState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EditItemStatus status,  SnackBarStatus snackBarStatus,  CategoriesStatus categoriesStatus,  File? image,  int? active,  CategoryModel? category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditItemState() when $default != null:
return $default(_that.status,_that.snackBarStatus,_that.categoriesStatus,_that.image,_that.active,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EditItemStatus status,  SnackBarStatus snackBarStatus,  CategoriesStatus categoriesStatus,  File? image,  int? active,  CategoryModel? category)  $default,) {final _that = this;
switch (_that) {
case _EditItemState():
return $default(_that.status,_that.snackBarStatus,_that.categoriesStatus,_that.image,_that.active,_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EditItemStatus status,  SnackBarStatus snackBarStatus,  CategoriesStatus categoriesStatus,  File? image,  int? active,  CategoryModel? category)?  $default,) {final _that = this;
switch (_that) {
case _EditItemState() when $default != null:
return $default(_that.status,_that.snackBarStatus,_that.categoriesStatus,_that.image,_that.active,_that.category);case _:
  return null;

}
}

}

/// @nodoc


class _EditItemState implements EditItemState {
  const _EditItemState({this.status = const EditItemStatus.initial(), this.snackBarStatus = const SnackBarStatus.initial(), this.categoriesStatus = const CategoriesStatus.initial(), this.image, this.active, this.category});
  

@override@JsonKey() final  EditItemStatus status;
@override@JsonKey() final  SnackBarStatus snackBarStatus;
@override@JsonKey() final  CategoriesStatus categoriesStatus;
@override final  File? image;
@override final  int? active;
@override final  CategoryModel? category;

/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditItemStateCopyWith<_EditItemState> get copyWith => __$EditItemStateCopyWithImpl<_EditItemState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditItemState&&(identical(other.status, status) || other.status == status)&&(identical(other.snackBarStatus, snackBarStatus) || other.snackBarStatus == snackBarStatus)&&(identical(other.categoriesStatus, categoriesStatus) || other.categoriesStatus == categoriesStatus)&&(identical(other.image, image) || other.image == image)&&(identical(other.active, active) || other.active == active)&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,status,snackBarStatus,categoriesStatus,image,active,category);

@override
String toString() {
  return 'EditItemState(status: $status, snackBarStatus: $snackBarStatus, categoriesStatus: $categoriesStatus, image: $image, active: $active, category: $category)';
}


}

/// @nodoc
abstract mixin class _$EditItemStateCopyWith<$Res> implements $EditItemStateCopyWith<$Res> {
  factory _$EditItemStateCopyWith(_EditItemState value, $Res Function(_EditItemState) _then) = __$EditItemStateCopyWithImpl;
@override @useResult
$Res call({
 EditItemStatus status, SnackBarStatus snackBarStatus, CategoriesStatus categoriesStatus, File? image, int? active, CategoryModel? category
});


@override $EditItemStatusCopyWith<$Res> get status;@override $SnackBarStatusCopyWith<$Res> get snackBarStatus;@override $CategoriesStatusCopyWith<$Res> get categoriesStatus;@override $CategoryModelCopyWith<$Res>? get category;

}
/// @nodoc
class __$EditItemStateCopyWithImpl<$Res>
    implements _$EditItemStateCopyWith<$Res> {
  __$EditItemStateCopyWithImpl(this._self, this._then);

  final _EditItemState _self;
  final $Res Function(_EditItemState) _then;

/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? snackBarStatus = null,Object? categoriesStatus = null,Object? image = freezed,Object? active = freezed,Object? category = freezed,}) {
  return _then(_EditItemState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EditItemStatus,snackBarStatus: null == snackBarStatus ? _self.snackBarStatus : snackBarStatus // ignore: cast_nullable_to_non_nullable
as SnackBarStatus,categoriesStatus: null == categoriesStatus ? _self.categoriesStatus : categoriesStatus // ignore: cast_nullable_to_non_nullable
as CategoriesStatus,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as File?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as int?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryModel?,
  ));
}

/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EditItemStatusCopyWith<$Res> get status {
  
  return $EditItemStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SnackBarStatusCopyWith<$Res> get snackBarStatus {
  
  return $SnackBarStatusCopyWith<$Res>(_self.snackBarStatus, (value) {
    return _then(_self.copyWith(snackBarStatus: value));
  });
}/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoriesStatusCopyWith<$Res> get categoriesStatus {
  
  return $CategoriesStatusCopyWith<$Res>(_self.categoriesStatus, (value) {
    return _then(_self.copyWith(categoriesStatus: value));
  });
}/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryModelCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}

/// @nodoc
mixin _$EditItemEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditItemEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditItemEvent()';
}


}

/// @nodoc
class $EditItemEventCopyWith<$Res>  {
$EditItemEventCopyWith(EditItemEvent _, $Res Function(EditItemEvent) __);
}


/// Adds pattern-matching-related methods to [EditItemEvent].
extension EditItemEventPatterns on EditItemEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _LoadCategories value)?  loadCategories,TResult Function( _Submit value)?  submit,TResult Function( _SetImege value)?  setImage,TResult Function( _SetCategory value)?  setCategory,TResult Function( _SetActive value)?  setActive,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadCategories() when loadCategories != null:
return loadCategories(_that);case _Submit() when submit != null:
return submit(_that);case _SetImege() when setImage != null:
return setImage(_that);case _SetCategory() when setCategory != null:
return setCategory(_that);case _SetActive() when setActive != null:
return setActive(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _LoadCategories value)  loadCategories,required TResult Function( _Submit value)  submit,required TResult Function( _SetImege value)  setImage,required TResult Function( _SetCategory value)  setCategory,required TResult Function( _SetActive value)  setActive,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _LoadCategories():
return loadCategories(_that);case _Submit():
return submit(_that);case _SetImege():
return setImage(_that);case _SetCategory():
return setCategory(_that);case _SetActive():
return setActive(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _LoadCategories value)?  loadCategories,TResult? Function( _Submit value)?  submit,TResult? Function( _SetImege value)?  setImage,TResult? Function( _SetCategory value)?  setCategory,TResult? Function( _SetActive value)?  setActive,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadCategories() when loadCategories != null:
return loadCategories(_that);case _Submit() when submit != null:
return submit(_that);case _SetImege() when setImage != null:
return setImage(_that);case _SetCategory() when setCategory != null:
return setCategory(_that);case _SetActive() when setActive != null:
return setActive(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( CategoryModel category,  int active)?  started,TResult Function()?  loadCategories,TResult Function( int id,  String name,  String nameAr,  String description,  String descriptionAr,  int count,  double price,  double discount,  int deliveryTime)?  submit,TResult Function( File file)?  setImage,TResult Function( CategoryModel category)?  setCategory,TResult Function( int active)?  setActive,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.category,_that.active);case _LoadCategories() when loadCategories != null:
return loadCategories();case _Submit() when submit != null:
return submit(_that.id,_that.name,_that.nameAr,_that.description,_that.descriptionAr,_that.count,_that.price,_that.discount,_that.deliveryTime);case _SetImege() when setImage != null:
return setImage(_that.file);case _SetCategory() when setCategory != null:
return setCategory(_that.category);case _SetActive() when setActive != null:
return setActive(_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( CategoryModel category,  int active)  started,required TResult Function()  loadCategories,required TResult Function( int id,  String name,  String nameAr,  String description,  String descriptionAr,  int count,  double price,  double discount,  int deliveryTime)  submit,required TResult Function( File file)  setImage,required TResult Function( CategoryModel category)  setCategory,required TResult Function( int active)  setActive,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.category,_that.active);case _LoadCategories():
return loadCategories();case _Submit():
return submit(_that.id,_that.name,_that.nameAr,_that.description,_that.descriptionAr,_that.count,_that.price,_that.discount,_that.deliveryTime);case _SetImege():
return setImage(_that.file);case _SetCategory():
return setCategory(_that.category);case _SetActive():
return setActive(_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( CategoryModel category,  int active)?  started,TResult? Function()?  loadCategories,TResult? Function( int id,  String name,  String nameAr,  String description,  String descriptionAr,  int count,  double price,  double discount,  int deliveryTime)?  submit,TResult? Function( File file)?  setImage,TResult? Function( CategoryModel category)?  setCategory,TResult? Function( int active)?  setActive,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.category,_that.active);case _LoadCategories() when loadCategories != null:
return loadCategories();case _Submit() when submit != null:
return submit(_that.id,_that.name,_that.nameAr,_that.description,_that.descriptionAr,_that.count,_that.price,_that.discount,_that.deliveryTime);case _SetImege() when setImage != null:
return setImage(_that.file);case _SetCategory() when setCategory != null:
return setCategory(_that.category);case _SetActive() when setActive != null:
return setActive(_that.active);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements EditItemEvent {
  const _Started({required this.category, required this.active});
  

 final  CategoryModel category;
 final  int active;

/// Create a copy of EditItemEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.category, category) || other.category == category)&&(identical(other.active, active) || other.active == active));
}


@override
int get hashCode => Object.hash(runtimeType,category,active);

@override
String toString() {
  return 'EditItemEvent.started(category: $category, active: $active)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $EditItemEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@useResult
$Res call({
 CategoryModel category, int active
});


$CategoryModelCopyWith<$Res> get category;

}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of EditItemEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,Object? active = null,}) {
  return _then(_Started(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryModel,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of EditItemEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<$Res> get category {
  
  return $CategoryModelCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}

/// @nodoc


class _LoadCategories implements EditItemEvent {
  const _LoadCategories();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadCategories);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditItemEvent.loadCategories()';
}


}




/// @nodoc


class _Submit implements EditItemEvent {
  const _Submit(this.id, {required this.name, required this.nameAr, required this.description, required this.descriptionAr, required this.count, required this.price, required this.discount, required this.deliveryTime});
  

 final  int id;
 final  String name;
 final  String nameAr;
 final  String description;
 final  String descriptionAr;
 final  int count;
 final  double price;
 final  double discount;
 final  int deliveryTime;

/// Create a copy of EditItemEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitCopyWith<_Submit> get copyWith => __$SubmitCopyWithImpl<_Submit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submit&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameAr, nameAr) || other.nameAr == nameAr)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionAr, descriptionAr) || other.descriptionAr == descriptionAr)&&(identical(other.count, count) || other.count == count)&&(identical(other.price, price) || other.price == price)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.deliveryTime, deliveryTime) || other.deliveryTime == deliveryTime));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,nameAr,description,descriptionAr,count,price,discount,deliveryTime);

@override
String toString() {
  return 'EditItemEvent.submit(id: $id, name: $name, nameAr: $nameAr, description: $description, descriptionAr: $descriptionAr, count: $count, price: $price, discount: $discount, deliveryTime: $deliveryTime)';
}


}

/// @nodoc
abstract mixin class _$SubmitCopyWith<$Res> implements $EditItemEventCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) _then) = __$SubmitCopyWithImpl;
@useResult
$Res call({
 int id, String name, String nameAr, String description, String descriptionAr, int count, double price, double discount, int deliveryTime
});




}
/// @nodoc
class __$SubmitCopyWithImpl<$Res>
    implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(this._self, this._then);

  final _Submit _self;
  final $Res Function(_Submit) _then;

/// Create a copy of EditItemEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? nameAr = null,Object? description = null,Object? descriptionAr = null,Object? count = null,Object? price = null,Object? discount = null,Object? deliveryTime = null,}) {
  return _then(_Submit(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameAr: null == nameAr ? _self.nameAr : nameAr // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,descriptionAr: null == descriptionAr ? _self.descriptionAr : descriptionAr // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double,deliveryTime: null == deliveryTime ? _self.deliveryTime : deliveryTime // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _SetImege implements EditItemEvent {
  const _SetImege(this.file);
  

 final  File file;

/// Create a copy of EditItemEvent
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
  return 'EditItemEvent.setImage(file: $file)';
}


}

/// @nodoc
abstract mixin class _$SetImegeCopyWith<$Res> implements $EditItemEventCopyWith<$Res> {
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

/// Create a copy of EditItemEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? file = null,}) {
  return _then(_SetImege(
null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as File,
  ));
}


}

/// @nodoc


class _SetCategory implements EditItemEvent {
  const _SetCategory(this.category);
  

 final  CategoryModel category;

/// Create a copy of EditItemEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetCategoryCopyWith<_SetCategory> get copyWith => __$SetCategoryCopyWithImpl<_SetCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetCategory&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'EditItemEvent.setCategory(category: $category)';
}


}

/// @nodoc
abstract mixin class _$SetCategoryCopyWith<$Res> implements $EditItemEventCopyWith<$Res> {
  factory _$SetCategoryCopyWith(_SetCategory value, $Res Function(_SetCategory) _then) = __$SetCategoryCopyWithImpl;
@useResult
$Res call({
 CategoryModel category
});


$CategoryModelCopyWith<$Res> get category;

}
/// @nodoc
class __$SetCategoryCopyWithImpl<$Res>
    implements _$SetCategoryCopyWith<$Res> {
  __$SetCategoryCopyWithImpl(this._self, this._then);

  final _SetCategory _self;
  final $Res Function(_SetCategory) _then;

/// Create a copy of EditItemEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(_SetCategory(
null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryModel,
  ));
}

/// Create a copy of EditItemEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<$Res> get category {
  
  return $CategoryModelCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}

/// @nodoc


class _SetActive implements EditItemEvent {
  const _SetActive(this.active);
  

 final  int active;

/// Create a copy of EditItemEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetActiveCopyWith<_SetActive> get copyWith => __$SetActiveCopyWithImpl<_SetActive>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetActive&&(identical(other.active, active) || other.active == active));
}


@override
int get hashCode => Object.hash(runtimeType,active);

@override
String toString() {
  return 'EditItemEvent.setActive(active: $active)';
}


}

/// @nodoc
abstract mixin class _$SetActiveCopyWith<$Res> implements $EditItemEventCopyWith<$Res> {
  factory _$SetActiveCopyWith(_SetActive value, $Res Function(_SetActive) _then) = __$SetActiveCopyWithImpl;
@useResult
$Res call({
 int active
});




}
/// @nodoc
class __$SetActiveCopyWithImpl<$Res>
    implements _$SetActiveCopyWith<$Res> {
  __$SetActiveCopyWithImpl(this._self, this._then);

  final _SetActive _self;
  final $Res Function(_SetActive) _then;

/// Create a copy of EditItemEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? active = null,}) {
  return _then(_SetActive(
null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
