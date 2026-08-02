// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OffersEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OffersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OffersEvent()';
}


}

/// @nodoc
class $OffersEventCopyWith<$Res>  {
$OffersEventCopyWith(OffersEvent _, $Res Function(OffersEvent) __);
}


/// Adds pattern-matching-related methods to [OffersEvent].
extension OffersEventPatterns on OffersEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadOffers value)?  loadOffers,TResult Function( _AddFavorite value)?  addFavorite,TResult Function( _RemoveFavorite value)?  removeFavorite,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadOffers() when loadOffers != null:
return loadOffers(_that);case _AddFavorite() when addFavorite != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadOffers value)  loadOffers,required TResult Function( _AddFavorite value)  addFavorite,required TResult Function( _RemoveFavorite value)  removeFavorite,}){
final _that = this;
switch (_that) {
case _LoadOffers():
return loadOffers(_that);case _AddFavorite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadOffers value)?  loadOffers,TResult? Function( _AddFavorite value)?  addFavorite,TResult? Function( _RemoveFavorite value)?  removeFavorite,}){
final _that = this;
switch (_that) {
case _LoadOffers() when loadOffers != null:
return loadOffers(_that);case _AddFavorite() when addFavorite != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadOffers,TResult Function( int itemsId)?  addFavorite,TResult Function( int itemsId)?  removeFavorite,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadOffers() when loadOffers != null:
return loadOffers();case _AddFavorite() when addFavorite != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadOffers,required TResult Function( int itemsId)  addFavorite,required TResult Function( int itemsId)  removeFavorite,}) {final _that = this;
switch (_that) {
case _LoadOffers():
return loadOffers();case _AddFavorite():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadOffers,TResult? Function( int itemsId)?  addFavorite,TResult? Function( int itemsId)?  removeFavorite,}) {final _that = this;
switch (_that) {
case _LoadOffers() when loadOffers != null:
return loadOffers();case _AddFavorite() when addFavorite != null:
return addFavorite(_that.itemsId);case _RemoveFavorite() when removeFavorite != null:
return removeFavorite(_that.itemsId);case _:
  return null;

}
}

}

/// @nodoc


class _LoadOffers implements OffersEvent {
  const _LoadOffers();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadOffers);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OffersEvent.loadOffers()';
}


}




/// @nodoc


class _AddFavorite implements OffersEvent {
  const _AddFavorite(this.itemsId);
  

 final  int itemsId;

/// Create a copy of OffersEvent
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
  return 'OffersEvent.addFavorite(itemsId: $itemsId)';
}


}

/// @nodoc
abstract mixin class _$AddFavoriteCopyWith<$Res> implements $OffersEventCopyWith<$Res> {
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

/// Create a copy of OffersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? itemsId = null,}) {
  return _then(_AddFavorite(
null == itemsId ? _self.itemsId : itemsId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _RemoveFavorite implements OffersEvent {
  const _RemoveFavorite(this.itemsId);
  

 final  int itemsId;

/// Create a copy of OffersEvent
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
  return 'OffersEvent.removeFavorite(itemsId: $itemsId)';
}


}

/// @nodoc
abstract mixin class _$RemoveFavoriteCopyWith<$Res> implements $OffersEventCopyWith<$Res> {
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

/// Create a copy of OffersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? itemsId = null,}) {
  return _then(_RemoveFavorite(
null == itemsId ? _self.itemsId : itemsId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$OffersStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OffersStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OffersStatus()';
}


}

/// @nodoc
class $OffersStatusCopyWith<$Res>  {
$OffersStatusCopyWith(OffersStatus _, $Res Function(OffersStatus) __);
}


/// Adds pattern-matching-related methods to [OffersStatus].
extension OffersStatusPatterns on OffersStatus {
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
return empty(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<ItemModel> items,  String lang)?  loaded,TResult Function( String message)?  serverFailure,TResult Function( String message)?  empty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.items,_that.lang);case _ServerFailure() when serverFailure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<ItemModel> items,  String lang)  loaded,required TResult Function( String message)  serverFailure,required TResult Function( String message)  empty,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.items,_that.lang);case _ServerFailure():
return serverFailure(_that.message);case _Empty():
return empty(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<ItemModel> items,  String lang)?  loaded,TResult? Function( String message)?  serverFailure,TResult? Function( String message)?  empty,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.items,_that.lang);case _ServerFailure() when serverFailure != null:
return serverFailure(_that.message);case _Empty() when empty != null:
return empty(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements OffersStatus {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OffersStatus.initial()';
}


}




/// @nodoc


class _Loading implements OffersStatus {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OffersStatus.loading()';
}


}




/// @nodoc


class _Loaded implements OffersStatus {
  const _Loaded({required final  List<ItemModel> items, required this.lang}): _items = items;
  

 final  List<ItemModel> _items;
 List<ItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  String lang;

/// Create a copy of OffersStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.lang, lang) || other.lang == lang));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),lang);

@override
String toString() {
  return 'OffersStatus.loaded(items: $items, lang: $lang)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $OffersStatusCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<ItemModel> items, String lang
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of OffersStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,Object? lang = null,}) {
  return _then(_Loaded(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ServerFailure implements OffersStatus {
  const _ServerFailure(this.message);
  

 final  String message;

/// Create a copy of OffersStatus
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
  return 'OffersStatus.serverFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ServerFailureCopyWith<$Res> implements $OffersStatusCopyWith<$Res> {
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

/// Create a copy of OffersStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ServerFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Empty implements OffersStatus {
  const _Empty(this.message);
  

 final  String message;

/// Create a copy of OffersStatus
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
  return 'OffersStatus.empty(message: $message)';
}


}

/// @nodoc
abstract mixin class _$EmptyCopyWith<$Res> implements $OffersStatusCopyWith<$Res> {
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

/// Create a copy of OffersStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Empty(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
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
mixin _$OffersState {

 OffersStatus get status; FavoriteStatus get favoriteStatus; Map<int, bool> get isFavorite;
/// Create a copy of OffersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OffersStateCopyWith<OffersState> get copyWith => _$OffersStateCopyWithImpl<OffersState>(this as OffersState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OffersState&&(identical(other.status, status) || other.status == status)&&(identical(other.favoriteStatus, favoriteStatus) || other.favoriteStatus == favoriteStatus)&&const DeepCollectionEquality().equals(other.isFavorite, isFavorite));
}


@override
int get hashCode => Object.hash(runtimeType,status,favoriteStatus,const DeepCollectionEquality().hash(isFavorite));

@override
String toString() {
  return 'OffersState(status: $status, favoriteStatus: $favoriteStatus, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $OffersStateCopyWith<$Res>  {
  factory $OffersStateCopyWith(OffersState value, $Res Function(OffersState) _then) = _$OffersStateCopyWithImpl;
@useResult
$Res call({
 OffersStatus status, FavoriteStatus favoriteStatus, Map<int, bool> isFavorite
});


$OffersStatusCopyWith<$Res> get status;$FavoriteStatusCopyWith<$Res> get favoriteStatus;

}
/// @nodoc
class _$OffersStateCopyWithImpl<$Res>
    implements $OffersStateCopyWith<$Res> {
  _$OffersStateCopyWithImpl(this._self, this._then);

  final OffersState _self;
  final $Res Function(OffersState) _then;

/// Create a copy of OffersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? favoriteStatus = null,Object? isFavorite = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OffersStatus,favoriteStatus: null == favoriteStatus ? _self.favoriteStatus : favoriteStatus // ignore: cast_nullable_to_non_nullable
as FavoriteStatus,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as Map<int, bool>,
  ));
}
/// Create a copy of OffersState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OffersStatusCopyWith<$Res> get status {
  
  return $OffersStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of OffersState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FavoriteStatusCopyWith<$Res> get favoriteStatus {
  
  return $FavoriteStatusCopyWith<$Res>(_self.favoriteStatus, (value) {
    return _then(_self.copyWith(favoriteStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [OffersState].
extension OffersStatePatterns on OffersState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OffersStatus status,  FavoriteStatus favoriteStatus,  Map<int, bool> isFavorite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemsState() when $default != null:
return $default(_that.status,_that.favoriteStatus,_that.isFavorite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OffersStatus status,  FavoriteStatus favoriteStatus,  Map<int, bool> isFavorite)  $default,) {final _that = this;
switch (_that) {
case _ItemsState():
return $default(_that.status,_that.favoriteStatus,_that.isFavorite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OffersStatus status,  FavoriteStatus favoriteStatus,  Map<int, bool> isFavorite)?  $default,) {final _that = this;
switch (_that) {
case _ItemsState() when $default != null:
return $default(_that.status,_that.favoriteStatus,_that.isFavorite);case _:
  return null;

}
}

}

/// @nodoc


class _ItemsState implements OffersState {
  const _ItemsState({this.status = const OffersStatus.initial(), this.favoriteStatus = const FavoriteStatus.initial(), final  Map<int, bool> isFavorite = const {}}): _isFavorite = isFavorite;
  

@override@JsonKey() final  OffersStatus status;
@override@JsonKey() final  FavoriteStatus favoriteStatus;
 final  Map<int, bool> _isFavorite;
@override@JsonKey() Map<int, bool> get isFavorite {
  if (_isFavorite is EqualUnmodifiableMapView) return _isFavorite;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_isFavorite);
}


/// Create a copy of OffersState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemsStateCopyWith<_ItemsState> get copyWith => __$ItemsStateCopyWithImpl<_ItemsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemsState&&(identical(other.status, status) || other.status == status)&&(identical(other.favoriteStatus, favoriteStatus) || other.favoriteStatus == favoriteStatus)&&const DeepCollectionEquality().equals(other._isFavorite, _isFavorite));
}


@override
int get hashCode => Object.hash(runtimeType,status,favoriteStatus,const DeepCollectionEquality().hash(_isFavorite));

@override
String toString() {
  return 'OffersState(status: $status, favoriteStatus: $favoriteStatus, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$ItemsStateCopyWith<$Res> implements $OffersStateCopyWith<$Res> {
  factory _$ItemsStateCopyWith(_ItemsState value, $Res Function(_ItemsState) _then) = __$ItemsStateCopyWithImpl;
@override @useResult
$Res call({
 OffersStatus status, FavoriteStatus favoriteStatus, Map<int, bool> isFavorite
});


@override $OffersStatusCopyWith<$Res> get status;@override $FavoriteStatusCopyWith<$Res> get favoriteStatus;

}
/// @nodoc
class __$ItemsStateCopyWithImpl<$Res>
    implements _$ItemsStateCopyWith<$Res> {
  __$ItemsStateCopyWithImpl(this._self, this._then);

  final _ItemsState _self;
  final $Res Function(_ItemsState) _then;

/// Create a copy of OffersState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? favoriteStatus = null,Object? isFavorite = null,}) {
  return _then(_ItemsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OffersStatus,favoriteStatus: null == favoriteStatus ? _self.favoriteStatus : favoriteStatus // ignore: cast_nullable_to_non_nullable
as FavoriteStatus,isFavorite: null == isFavorite ? _self._isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as Map<int, bool>,
  ));
}

/// Create a copy of OffersState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OffersStatusCopyWith<$Res> get status {
  
  return $OffersStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of OffersState
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
