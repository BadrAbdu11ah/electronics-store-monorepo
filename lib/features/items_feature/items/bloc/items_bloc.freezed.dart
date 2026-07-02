// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ItemsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemsEvent()';
}


}

/// @nodoc
class $ItemsEventCopyWith<$Res>  {
$ItemsEventCopyWith(ItemsEvent _, $Res Function(ItemsEvent) __);
}


/// Adds pattern-matching-related methods to [ItemsEvent].
extension ItemsEventPatterns on ItemsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _LoadItems value)?  loadItems,TResult Function( _AddFavorite value)?  addFavorite,TResult Function( _RemoveFavorite value)?  removeFavorite,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadItems() when loadItems != null:
return loadItems(_that);case _AddFavorite() when addFavorite != null:
return addFavorite(_that);case _RemoveFavorite() when removeFavorite != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _LoadItems value)  loadItems,required TResult Function( _AddFavorite value)  addFavorite,required TResult Function( _RemoveFavorite value)  removeFavorite,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _LoadItems():
return loadItems(_that);case _AddFavorite():
return addFavorite(_that);case _RemoveFavorite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _LoadItems value)?  loadItems,TResult? Function( _AddFavorite value)?  addFavorite,TResult? Function( _RemoveFavorite value)?  removeFavorite,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadItems() when loadItems != null:
return loadItems(_that);case _AddFavorite() when addFavorite != null:
return addFavorite(_that);case _RemoveFavorite() when removeFavorite != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int categoryId,  List<CategoryModel> categories)?  started,TResult Function( int categoryId)?  loadItems,TResult Function( int itemsId)?  addFavorite,TResult Function( int itemsId)?  removeFavorite,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.categoryId,_that.categories);case _LoadItems() when loadItems != null:
return loadItems(_that.categoryId);case _AddFavorite() when addFavorite != null:
return addFavorite(_that.itemsId);case _RemoveFavorite() when removeFavorite != null:
return removeFavorite(_that.itemsId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int categoryId,  List<CategoryModel> categories)  started,required TResult Function( int categoryId)  loadItems,required TResult Function( int itemsId)  addFavorite,required TResult Function( int itemsId)  removeFavorite,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.categoryId,_that.categories);case _LoadItems():
return loadItems(_that.categoryId);case _AddFavorite():
return addFavorite(_that.itemsId);case _RemoveFavorite():
return removeFavorite(_that.itemsId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int categoryId,  List<CategoryModel> categories)?  started,TResult? Function( int categoryId)?  loadItems,TResult? Function( int itemsId)?  addFavorite,TResult? Function( int itemsId)?  removeFavorite,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.categoryId,_that.categories);case _LoadItems() when loadItems != null:
return loadItems(_that.categoryId);case _AddFavorite() when addFavorite != null:
return addFavorite(_that.itemsId);case _RemoveFavorite() when removeFavorite != null:
return removeFavorite(_that.itemsId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements ItemsEvent {
  const _Started({required this.categoryId, required final  List<CategoryModel> categories}): _categories = categories;
  

 final  int categoryId;
 final  List<CategoryModel> _categories;
 List<CategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of ItemsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&const DeepCollectionEquality().equals(other._categories, _categories));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'ItemsEvent.started(categoryId: $categoryId, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $ItemsEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@useResult
$Res call({
 int categoryId, List<CategoryModel> categories
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of ItemsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = null,Object? categories = null,}) {
  return _then(_Started(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,
  ));
}


}

/// @nodoc


class _LoadItems implements ItemsEvent {
  const _LoadItems({required this.categoryId});
  

 final  int categoryId;

/// Create a copy of ItemsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadItemsCopyWith<_LoadItems> get copyWith => __$LoadItemsCopyWithImpl<_LoadItems>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadItems&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId);

@override
String toString() {
  return 'ItemsEvent.loadItems(categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class _$LoadItemsCopyWith<$Res> implements $ItemsEventCopyWith<$Res> {
  factory _$LoadItemsCopyWith(_LoadItems value, $Res Function(_LoadItems) _then) = __$LoadItemsCopyWithImpl;
@useResult
$Res call({
 int categoryId
});




}
/// @nodoc
class __$LoadItemsCopyWithImpl<$Res>
    implements _$LoadItemsCopyWith<$Res> {
  __$LoadItemsCopyWithImpl(this._self, this._then);

  final _LoadItems _self;
  final $Res Function(_LoadItems) _then;

/// Create a copy of ItemsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = null,}) {
  return _then(_LoadItems(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _AddFavorite implements ItemsEvent {
  const _AddFavorite(this.itemsId);
  

 final  int itemsId;

/// Create a copy of ItemsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddFavoriteCopyWith<_AddFavorite> get copyWith => __$AddFavoriteCopyWithImpl<_AddFavorite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddFavorite&&(identical(other.itemsId, itemsId) || other.itemsId == itemsId));
}


@override
int get hashCode => Object.hash(runtimeType,itemsId);

@override
String toString() {
  return 'ItemsEvent.addFavorite(itemsId: $itemsId)';
}


}

/// @nodoc
abstract mixin class _$AddFavoriteCopyWith<$Res> implements $ItemsEventCopyWith<$Res> {
  factory _$AddFavoriteCopyWith(_AddFavorite value, $Res Function(_AddFavorite) _then) = __$AddFavoriteCopyWithImpl;
@useResult
$Res call({
 int itemsId
});




}
/// @nodoc
class __$AddFavoriteCopyWithImpl<$Res>
    implements _$AddFavoriteCopyWith<$Res> {
  __$AddFavoriteCopyWithImpl(this._self, this._then);

  final _AddFavorite _self;
  final $Res Function(_AddFavorite) _then;

/// Create a copy of ItemsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? itemsId = null,}) {
  return _then(_AddFavorite(
null == itemsId ? _self.itemsId : itemsId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _RemoveFavorite implements ItemsEvent {
  const _RemoveFavorite(this.itemsId);
  

 final  int itemsId;

/// Create a copy of ItemsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveFavoriteCopyWith<_RemoveFavorite> get copyWith => __$RemoveFavoriteCopyWithImpl<_RemoveFavorite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveFavorite&&(identical(other.itemsId, itemsId) || other.itemsId == itemsId));
}


@override
int get hashCode => Object.hash(runtimeType,itemsId);

@override
String toString() {
  return 'ItemsEvent.removeFavorite(itemsId: $itemsId)';
}


}

/// @nodoc
abstract mixin class _$RemoveFavoriteCopyWith<$Res> implements $ItemsEventCopyWith<$Res> {
  factory _$RemoveFavoriteCopyWith(_RemoveFavorite value, $Res Function(_RemoveFavorite) _then) = __$RemoveFavoriteCopyWithImpl;
@useResult
$Res call({
 int itemsId
});




}
/// @nodoc
class __$RemoveFavoriteCopyWithImpl<$Res>
    implements _$RemoveFavoriteCopyWith<$Res> {
  __$RemoveFavoriteCopyWithImpl(this._self, this._then);

  final _RemoveFavorite _self;
  final $Res Function(_RemoveFavorite) _then;

/// Create a copy of ItemsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? itemsId = null,}) {
  return _then(_RemoveFavorite(
null == itemsId ? _self.itemsId : itemsId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ItemsStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemsStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemsStatus()';
}


}

/// @nodoc
class $ItemsStatusCopyWith<$Res>  {
$ItemsStatusCopyWith(ItemsStatus _, $Res Function(ItemsStatus) __);
}


/// Adds pattern-matching-related methods to [ItemsStatus].
extension ItemsStatusPatterns on ItemsStatus {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  loaded,TResult Function( String errorMessage)?  serverFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded();case _ServerFailure() when serverFailure != null:
return serverFailure(_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  loaded,required TResult Function( String errorMessage)  serverFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded();case _ServerFailure():
return serverFailure(_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  loaded,TResult? Function( String errorMessage)?  serverFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded();case _ServerFailure() when serverFailure != null:
return serverFailure(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ItemsStatus {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemsStatus.initial()';
}


}




/// @nodoc


class _Loading implements ItemsStatus {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemsStatus.loading()';
}


}




/// @nodoc


class _Loaded implements ItemsStatus {
  const _Loaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemsStatus.loaded()';
}


}




/// @nodoc


class _ServerFailure implements ItemsStatus {
  const _ServerFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of ItemsStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServerFailureCopyWith<_ServerFailure> get copyWith => __$ServerFailureCopyWithImpl<_ServerFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerFailure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'ItemsStatus.serverFailure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ServerFailureCopyWith<$Res> implements $ItemsStatusCopyWith<$Res> {
  factory _$ServerFailureCopyWith(_ServerFailure value, $Res Function(_ServerFailure) _then) = __$ServerFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class __$ServerFailureCopyWithImpl<$Res>
    implements _$ServerFailureCopyWith<$Res> {
  __$ServerFailureCopyWithImpl(this._self, this._then);

  final _ServerFailure _self;
  final $Res Function(_ServerFailure) _then;

/// Create a copy of ItemsStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(_ServerFailure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FavInitial value)?  initial,TResult Function( _FavSuccess value)?  success,TResult Function( _FavFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavInitial() when initial != null:
return initial(_that);case _FavSuccess() when success != null:
return success(_that);case _FavFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FavInitial value)  initial,required TResult Function( _FavSuccess value)  success,required TResult Function( _FavFailure value)  failure,}){
final _that = this;
switch (_that) {
case _FavInitial():
return initial(_that);case _FavSuccess():
return success(_that);case _FavFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FavInitial value)?  initial,TResult? Function( _FavSuccess value)?  success,TResult? Function( _FavFailure value)?  failure,}){
final _that = this;
switch (_that) {
case _FavInitial() when initial != null:
return initial(_that);case _FavSuccess() when success != null:
return success(_that);case _FavFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( String message)?  success,TResult Function( String errorMessage)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavInitial() when initial != null:
return initial();case _FavSuccess() when success != null:
return success(_that.message);case _FavFailure() when failure != null:
return failure(_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( String message)  success,required TResult Function( String errorMessage)  failure,}) {final _that = this;
switch (_that) {
case _FavInitial():
return initial();case _FavSuccess():
return success(_that.message);case _FavFailure():
return failure(_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( String message)?  success,TResult? Function( String errorMessage)?  failure,}) {final _that = this;
switch (_that) {
case _FavInitial() when initial != null:
return initial();case _FavSuccess() when success != null:
return success(_that.message);case _FavFailure() when failure != null:
return failure(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _FavInitial implements FavoriteStatus {
  const _FavInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteStatus.initial()';
}


}




/// @nodoc


class _FavSuccess implements FavoriteStatus {
  const _FavSuccess(this.message);
  

 final  String message;

/// Create a copy of FavoriteStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavSuccessCopyWith<_FavSuccess> get copyWith => __$FavSuccessCopyWithImpl<_FavSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'FavoriteStatus.success(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FavSuccessCopyWith<$Res> implements $FavoriteStatusCopyWith<$Res> {
  factory _$FavSuccessCopyWith(_FavSuccess value, $Res Function(_FavSuccess) _then) = __$FavSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$FavSuccessCopyWithImpl<$Res>
    implements _$FavSuccessCopyWith<$Res> {
  __$FavSuccessCopyWithImpl(this._self, this._then);

  final _FavSuccess _self;
  final $Res Function(_FavSuccess) _then;

/// Create a copy of FavoriteStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_FavSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _FavFailure implements FavoriteStatus {
  const _FavFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of FavoriteStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavFailureCopyWith<_FavFailure> get copyWith => __$FavFailureCopyWithImpl<_FavFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavFailure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'FavoriteStatus.failure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$FavFailureCopyWith<$Res> implements $FavoriteStatusCopyWith<$Res> {
  factory _$FavFailureCopyWith(_FavFailure value, $Res Function(_FavFailure) _then) = __$FavFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class __$FavFailureCopyWithImpl<$Res>
    implements _$FavFailureCopyWith<$Res> {
  __$FavFailureCopyWithImpl(this._self, this._then);

  final _FavFailure _self;
  final $Res Function(_FavFailure) _then;

/// Create a copy of FavoriteStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(_FavFailure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ItemsState {

 ItemsStatus get status; FavoriteStatus get favoriteStatus; List<ItemModel> get items; List<CategoryModel> get categories; int get categoryId; Map<int, bool> get isFavorite; String? get lang;
/// Create a copy of ItemsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemsStateCopyWith<ItemsState> get copyWith => _$ItemsStateCopyWithImpl<ItemsState>(this as ItemsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemsState&&(identical(other.status, status) || other.status == status)&&(identical(other.favoriteStatus, favoriteStatus) || other.favoriteStatus == favoriteStatus)&&const DeepCollectionEquality().equals(other.items, items)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&const DeepCollectionEquality().equals(other.isFavorite, isFavorite)&&(identical(other.lang, lang) || other.lang == lang));
}


@override
int get hashCode => Object.hash(runtimeType,status,favoriteStatus,const DeepCollectionEquality().hash(items),const DeepCollectionEquality().hash(categories),categoryId,const DeepCollectionEquality().hash(isFavorite),lang);

@override
String toString() {
  return 'ItemsState(status: $status, favoriteStatus: $favoriteStatus, items: $items, categories: $categories, categoryId: $categoryId, isFavorite: $isFavorite, lang: $lang)';
}


}

/// @nodoc
abstract mixin class $ItemsStateCopyWith<$Res>  {
  factory $ItemsStateCopyWith(ItemsState value, $Res Function(ItemsState) _then) = _$ItemsStateCopyWithImpl;
@useResult
$Res call({
 ItemsStatus status, FavoriteStatus favoriteStatus, List<ItemModel> items, List<CategoryModel> categories, int categoryId, Map<int, bool> isFavorite, String? lang
});


$ItemsStatusCopyWith<$Res> get status;$FavoriteStatusCopyWith<$Res> get favoriteStatus;

}
/// @nodoc
class _$ItemsStateCopyWithImpl<$Res>
    implements $ItemsStateCopyWith<$Res> {
  _$ItemsStateCopyWithImpl(this._self, this._then);

  final ItemsState _self;
  final $Res Function(ItemsState) _then;

/// Create a copy of ItemsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? favoriteStatus = null,Object? items = null,Object? categories = null,Object? categoryId = null,Object? isFavorite = null,Object? lang = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ItemsStatus,favoriteStatus: null == favoriteStatus ? _self.favoriteStatus : favoriteStatus // ignore: cast_nullable_to_non_nullable
as FavoriteStatus,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as Map<int, bool>,lang: freezed == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ItemsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemsStatusCopyWith<$Res> get status {
  
  return $ItemsStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ItemsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FavoriteStatusCopyWith<$Res> get favoriteStatus {
  
  return $FavoriteStatusCopyWith<$Res>(_self.favoriteStatus, (value) {
    return _then(_self.copyWith(favoriteStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [ItemsState].
extension ItemsStatePatterns on ItemsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemsState value)  $default,){
final _that = this;
switch (_that) {
case _ItemsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemsState value)?  $default,){
final _that = this;
switch (_that) {
case _ItemsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ItemsStatus status,  FavoriteStatus favoriteStatus,  List<ItemModel> items,  List<CategoryModel> categories,  int categoryId,  Map<int, bool> isFavorite,  String? lang)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemsState() when $default != null:
return $default(_that.status,_that.favoriteStatus,_that.items,_that.categories,_that.categoryId,_that.isFavorite,_that.lang);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ItemsStatus status,  FavoriteStatus favoriteStatus,  List<ItemModel> items,  List<CategoryModel> categories,  int categoryId,  Map<int, bool> isFavorite,  String? lang)  $default,) {final _that = this;
switch (_that) {
case _ItemsState():
return $default(_that.status,_that.favoriteStatus,_that.items,_that.categories,_that.categoryId,_that.isFavorite,_that.lang);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ItemsStatus status,  FavoriteStatus favoriteStatus,  List<ItemModel> items,  List<CategoryModel> categories,  int categoryId,  Map<int, bool> isFavorite,  String? lang)?  $default,) {final _that = this;
switch (_that) {
case _ItemsState() when $default != null:
return $default(_that.status,_that.favoriteStatus,_that.items,_that.categories,_that.categoryId,_that.isFavorite,_that.lang);case _:
  return null;

}
}

}

/// @nodoc


class _ItemsState implements ItemsState {
  const _ItemsState({this.status = const ItemsStatus.initial(), this.favoriteStatus = const FavoriteStatus.initial(), final  List<ItemModel> items = const [], final  List<CategoryModel> categories = const [], this.categoryId = 0, final  Map<int, bool> isFavorite = const {}, this.lang}): _items = items,_categories = categories,_isFavorite = isFavorite;
  

@override@JsonKey() final  ItemsStatus status;
@override@JsonKey() final  FavoriteStatus favoriteStatus;
 final  List<ItemModel> _items;
@override@JsonKey() List<ItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  List<CategoryModel> _categories;
@override@JsonKey() List<CategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  int categoryId;
 final  Map<int, bool> _isFavorite;
@override@JsonKey() Map<int, bool> get isFavorite {
  if (_isFavorite is EqualUnmodifiableMapView) return _isFavorite;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_isFavorite);
}

@override final  String? lang;

/// Create a copy of ItemsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemsStateCopyWith<_ItemsState> get copyWith => __$ItemsStateCopyWithImpl<_ItemsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemsState&&(identical(other.status, status) || other.status == status)&&(identical(other.favoriteStatus, favoriteStatus) || other.favoriteStatus == favoriteStatus)&&const DeepCollectionEquality().equals(other._items, _items)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&const DeepCollectionEquality().equals(other._isFavorite, _isFavorite)&&(identical(other.lang, lang) || other.lang == lang));
}


@override
int get hashCode => Object.hash(runtimeType,status,favoriteStatus,const DeepCollectionEquality().hash(_items),const DeepCollectionEquality().hash(_categories),categoryId,const DeepCollectionEquality().hash(_isFavorite),lang);

@override
String toString() {
  return 'ItemsState(status: $status, favoriteStatus: $favoriteStatus, items: $items, categories: $categories, categoryId: $categoryId, isFavorite: $isFavorite, lang: $lang)';
}


}

/// @nodoc
abstract mixin class _$ItemsStateCopyWith<$Res> implements $ItemsStateCopyWith<$Res> {
  factory _$ItemsStateCopyWith(_ItemsState value, $Res Function(_ItemsState) _then) = __$ItemsStateCopyWithImpl;
@override @useResult
$Res call({
 ItemsStatus status, FavoriteStatus favoriteStatus, List<ItemModel> items, List<CategoryModel> categories, int categoryId, Map<int, bool> isFavorite, String? lang
});


@override $ItemsStatusCopyWith<$Res> get status;@override $FavoriteStatusCopyWith<$Res> get favoriteStatus;

}
/// @nodoc
class __$ItemsStateCopyWithImpl<$Res>
    implements _$ItemsStateCopyWith<$Res> {
  __$ItemsStateCopyWithImpl(this._self, this._then);

  final _ItemsState _self;
  final $Res Function(_ItemsState) _then;

/// Create a copy of ItemsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? favoriteStatus = null,Object? items = null,Object? categories = null,Object? categoryId = null,Object? isFavorite = null,Object? lang = freezed,}) {
  return _then(_ItemsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ItemsStatus,favoriteStatus: null == favoriteStatus ? _self.favoriteStatus : favoriteStatus // ignore: cast_nullable_to_non_nullable
as FavoriteStatus,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,isFavorite: null == isFavorite ? _self._isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as Map<int, bool>,lang: freezed == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ItemsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemsStatusCopyWith<$Res> get status {
  
  return $ItemsStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ItemsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FavoriteStatusCopyWith<$Res> get favoriteStatus {
  
  return $FavoriteStatusCopyWith<$Res>(_self.favoriteStatus, (value) {
    return _then(_self.copyWith(favoriteStatus: value));
  });
}
}

// dart format on
