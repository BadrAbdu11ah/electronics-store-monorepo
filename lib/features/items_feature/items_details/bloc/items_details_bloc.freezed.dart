// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ItemsDetailsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemsDetailsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemsDetailsEvent()';
}


}

/// @nodoc
class $ItemsDetailsEventCopyWith<$Res>  {
$ItemsDetailsEventCopyWith(ItemsDetailsEvent _, $Res Function(ItemsDetailsEvent) __);
}


/// Adds pattern-matching-related methods to [ItemsDetailsEvent].
extension ItemsDetailsEventPatterns on ItemsDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _LoadCountCart value)?  loadCountCart,TResult Function( _AddCart value)?  addCart,TResult Function( _RemoveCart value)?  removeCart,TResult Function( _SelelctedColor value)?  selectedColor,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadCountCart() when loadCountCart != null:
return loadCountCart(_that);case _AddCart() when addCart != null:
return addCart(_that);case _RemoveCart() when removeCart != null:
return removeCart(_that);case _SelelctedColor() when selectedColor != null:
return selectedColor(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _LoadCountCart value)  loadCountCart,required TResult Function( _AddCart value)  addCart,required TResult Function( _RemoveCart value)  removeCart,required TResult Function( _SelelctedColor value)  selectedColor,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _LoadCountCart():
return loadCountCart(_that);case _AddCart():
return addCart(_that);case _RemoveCart():
return removeCart(_that);case _SelelctedColor():
return selectedColor(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _LoadCountCart value)?  loadCountCart,TResult? Function( _AddCart value)?  addCart,TResult? Function( _RemoveCart value)?  removeCart,TResult? Function( _SelelctedColor value)?  selectedColor,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadCountCart() when loadCountCart != null:
return loadCountCart(_that);case _AddCart() when addCart != null:
return addCart(_that);case _RemoveCart() when removeCart != null:
return removeCart(_that);case _SelelctedColor() when selectedColor != null:
return selectedColor(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ItemModel itemModel)?  started,TResult Function( int itemsId)?  loadCountCart,TResult Function( int itemsId)?  addCart,TResult Function( int itemsId)?  removeCart,TResult Function( int index)?  selectedColor,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.itemModel);case _LoadCountCart() when loadCountCart != null:
return loadCountCart(_that.itemsId);case _AddCart() when addCart != null:
return addCart(_that.itemsId);case _RemoveCart() when removeCart != null:
return removeCart(_that.itemsId);case _SelelctedColor() when selectedColor != null:
return selectedColor(_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ItemModel itemModel)  started,required TResult Function( int itemsId)  loadCountCart,required TResult Function( int itemsId)  addCart,required TResult Function( int itemsId)  removeCart,required TResult Function( int index)  selectedColor,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.itemModel);case _LoadCountCart():
return loadCountCart(_that.itemsId);case _AddCart():
return addCart(_that.itemsId);case _RemoveCart():
return removeCart(_that.itemsId);case _SelelctedColor():
return selectedColor(_that.index);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ItemModel itemModel)?  started,TResult? Function( int itemsId)?  loadCountCart,TResult? Function( int itemsId)?  addCart,TResult? Function( int itemsId)?  removeCart,TResult? Function( int index)?  selectedColor,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.itemModel);case _LoadCountCart() when loadCountCart != null:
return loadCountCart(_that.itemsId);case _AddCart() when addCart != null:
return addCart(_that.itemsId);case _RemoveCart() when removeCart != null:
return removeCart(_that.itemsId);case _SelelctedColor() when selectedColor != null:
return selectedColor(_that.index);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements ItemsDetailsEvent {
  const _Started(this.itemModel);
  

 final  ItemModel itemModel;

/// Create a copy of ItemsDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.itemModel, itemModel) || other.itemModel == itemModel));
}


@override
int get hashCode => Object.hash(runtimeType,itemModel);

@override
String toString() {
  return 'ItemsDetailsEvent.started(itemModel: $itemModel)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $ItemsDetailsEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@useResult
$Res call({
 ItemModel itemModel
});


$ItemModelCopyWith<$Res> get itemModel;

}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of ItemsDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? itemModel = null,}) {
  return _then(_Started(
null == itemModel ? _self.itemModel : itemModel // ignore: cast_nullable_to_non_nullable
as ItemModel,
  ));
}

/// Create a copy of ItemsDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemModelCopyWith<$Res> get itemModel {
  
  return $ItemModelCopyWith<$Res>(_self.itemModel, (value) {
    return _then(_self.copyWith(itemModel: value));
  });
}
}

/// @nodoc


class _LoadCountCart implements ItemsDetailsEvent {
  const _LoadCountCart(this.itemsId);
  

 final  int itemsId;

/// Create a copy of ItemsDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadCountCartCopyWith<_LoadCountCart> get copyWith => __$LoadCountCartCopyWithImpl<_LoadCountCart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadCountCart&&(identical(other.itemsId, itemsId) || other.itemsId == itemsId));
}


@override
int get hashCode => Object.hash(runtimeType,itemsId);

@override
String toString() {
  return 'ItemsDetailsEvent.loadCountCart(itemsId: $itemsId)';
}


}

/// @nodoc
abstract mixin class _$LoadCountCartCopyWith<$Res> implements $ItemsDetailsEventCopyWith<$Res> {
  factory _$LoadCountCartCopyWith(_LoadCountCart value, $Res Function(_LoadCountCart) _then) = __$LoadCountCartCopyWithImpl;
@useResult
$Res call({
 int itemsId
});




}
/// @nodoc
class __$LoadCountCartCopyWithImpl<$Res>
    implements _$LoadCountCartCopyWith<$Res> {
  __$LoadCountCartCopyWithImpl(this._self, this._then);

  final _LoadCountCart _self;
  final $Res Function(_LoadCountCart) _then;

/// Create a copy of ItemsDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? itemsId = null,}) {
  return _then(_LoadCountCart(
null == itemsId ? _self.itemsId : itemsId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _AddCart implements ItemsDetailsEvent {
  const _AddCart(this.itemsId);
  

 final  int itemsId;

/// Create a copy of ItemsDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddCartCopyWith<_AddCart> get copyWith => __$AddCartCopyWithImpl<_AddCart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddCart&&(identical(other.itemsId, itemsId) || other.itemsId == itemsId));
}


@override
int get hashCode => Object.hash(runtimeType,itemsId);

@override
String toString() {
  return 'ItemsDetailsEvent.addCart(itemsId: $itemsId)';
}


}

/// @nodoc
abstract mixin class _$AddCartCopyWith<$Res> implements $ItemsDetailsEventCopyWith<$Res> {
  factory _$AddCartCopyWith(_AddCart value, $Res Function(_AddCart) _then) = __$AddCartCopyWithImpl;
@useResult
$Res call({
 int itemsId
});




}
/// @nodoc
class __$AddCartCopyWithImpl<$Res>
    implements _$AddCartCopyWith<$Res> {
  __$AddCartCopyWithImpl(this._self, this._then);

  final _AddCart _self;
  final $Res Function(_AddCart) _then;

/// Create a copy of ItemsDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? itemsId = null,}) {
  return _then(_AddCart(
null == itemsId ? _self.itemsId : itemsId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _RemoveCart implements ItemsDetailsEvent {
  const _RemoveCart(this.itemsId);
  

 final  int itemsId;

/// Create a copy of ItemsDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveCartCopyWith<_RemoveCart> get copyWith => __$RemoveCartCopyWithImpl<_RemoveCart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveCart&&(identical(other.itemsId, itemsId) || other.itemsId == itemsId));
}


@override
int get hashCode => Object.hash(runtimeType,itemsId);

@override
String toString() {
  return 'ItemsDetailsEvent.removeCart(itemsId: $itemsId)';
}


}

/// @nodoc
abstract mixin class _$RemoveCartCopyWith<$Res> implements $ItemsDetailsEventCopyWith<$Res> {
  factory _$RemoveCartCopyWith(_RemoveCart value, $Res Function(_RemoveCart) _then) = __$RemoveCartCopyWithImpl;
@useResult
$Res call({
 int itemsId
});




}
/// @nodoc
class __$RemoveCartCopyWithImpl<$Res>
    implements _$RemoveCartCopyWith<$Res> {
  __$RemoveCartCopyWithImpl(this._self, this._then);

  final _RemoveCart _self;
  final $Res Function(_RemoveCart) _then;

/// Create a copy of ItemsDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? itemsId = null,}) {
  return _then(_RemoveCart(
null == itemsId ? _self.itemsId : itemsId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _SelelctedColor implements ItemsDetailsEvent {
  const _SelelctedColor(this.index);
  

 final  int index;

/// Create a copy of ItemsDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelelctedColorCopyWith<_SelelctedColor> get copyWith => __$SelelctedColorCopyWithImpl<_SelelctedColor>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelelctedColor&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'ItemsDetailsEvent.selectedColor(index: $index)';
}


}

/// @nodoc
abstract mixin class _$SelelctedColorCopyWith<$Res> implements $ItemsDetailsEventCopyWith<$Res> {
  factory _$SelelctedColorCopyWith(_SelelctedColor value, $Res Function(_SelelctedColor) _then) = __$SelelctedColorCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class __$SelelctedColorCopyWithImpl<$Res>
    implements _$SelelctedColorCopyWith<$Res> {
  __$SelelctedColorCopyWithImpl(this._self, this._then);

  final _SelelctedColor _self;
  final $Res Function(_SelelctedColor) _then;

/// Create a copy of ItemsDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(_SelelctedColor(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ItemsDetailsStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemsDetailsStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemsDetailsStatus()';
}


}

/// @nodoc
class $ItemsDetailsStatusCopyWith<$Res>  {
$ItemsDetailsStatusCopyWith(ItemsDetailsStatus _, $Res Function(ItemsDetailsStatus) __);
}


/// Adds pattern-matching-related methods to [ItemsDetailsStatus].
extension ItemsDetailsStatusPatterns on ItemsDetailsStatus {
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


class _Initial implements ItemsDetailsStatus {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemsDetailsStatus.initial()';
}


}




/// @nodoc


class _Loading implements ItemsDetailsStatus {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemsDetailsStatus.loading()';
}


}




/// @nodoc


class _Loaded implements ItemsDetailsStatus {
  const _Loaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemsDetailsStatus.loaded()';
}


}




/// @nodoc


class _ServerFailure implements ItemsDetailsStatus {
  const _ServerFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of ItemsDetailsStatus
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
  return 'ItemsDetailsStatus.serverFailure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ServerFailureCopyWith<$Res> implements $ItemsDetailsStatusCopyWith<$Res> {
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

/// Create a copy of ItemsDetailsStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(_ServerFailure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$CartStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartStatus()';
}


}

/// @nodoc
class $CartStatusCopyWith<$Res>  {
$CartStatusCopyWith(CartStatus _, $Res Function(CartStatus) __);
}


/// Adds pattern-matching-related methods to [CartStatus].
extension CartStatusPatterns on CartStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CartInitial value)?  initial,TResult Function( _failure value)?  failure,TResult Function( _Success value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartInitial() when initial != null:
return initial(_that);case _failure() when failure != null:
return failure(_that);case _Success() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CartInitial value)  initial,required TResult Function( _failure value)  failure,required TResult Function( _Success value)  success,}){
final _that = this;
switch (_that) {
case _CartInitial():
return initial(_that);case _failure():
return failure(_that);case _Success():
return success(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CartInitial value)?  initial,TResult? Function( _failure value)?  failure,TResult? Function( _Success value)?  success,}){
final _that = this;
switch (_that) {
case _CartInitial() when initial != null:
return initial(_that);case _failure() when failure != null:
return failure(_that);case _Success() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( String errorMessage)?  failure,TResult Function( String message)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartInitial() when initial != null:
return initial();case _failure() when failure != null:
return failure(_that.errorMessage);case _Success() when success != null:
return success(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( String errorMessage)  failure,required TResult Function( String message)  success,}) {final _that = this;
switch (_that) {
case _CartInitial():
return initial();case _failure():
return failure(_that.errorMessage);case _Success():
return success(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( String errorMessage)?  failure,TResult? Function( String message)?  success,}) {final _that = this;
switch (_that) {
case _CartInitial() when initial != null:
return initial();case _failure() when failure != null:
return failure(_that.errorMessage);case _Success() when success != null:
return success(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _CartInitial implements CartStatus {
  const _CartInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartStatus.initial()';
}


}




/// @nodoc


class _failure implements CartStatus {
  const _failure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of CartStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$failureCopyWith<_failure> get copyWith => __$failureCopyWithImpl<_failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _failure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'CartStatus.failure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$failureCopyWith<$Res> implements $CartStatusCopyWith<$Res> {
  factory _$failureCopyWith(_failure value, $Res Function(_failure) _then) = __$failureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class __$failureCopyWithImpl<$Res>
    implements _$failureCopyWith<$Res> {
  __$failureCopyWithImpl(this._self, this._then);

  final _failure _self;
  final $Res Function(_failure) _then;

/// Create a copy of CartStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(_failure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Success implements CartStatus {
  const _Success(this.message);
  

 final  String message;

/// Create a copy of CartStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CartStatus.success(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $CartStatusCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of CartStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ItemsDetailsState {

 ItemsDetailsStatus get status; CartStatus get cartStatus; ItemModel? get itemModel; int get count; List<String> get selectedColors; List<Map<String, dynamic>> get subItems; bool get isUpdating;
/// Create a copy of ItemsDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemsDetailsStateCopyWith<ItemsDetailsState> get copyWith => _$ItemsDetailsStateCopyWithImpl<ItemsDetailsState>(this as ItemsDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemsDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.cartStatus, cartStatus) || other.cartStatus == cartStatus)&&(identical(other.itemModel, itemModel) || other.itemModel == itemModel)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.selectedColors, selectedColors)&&const DeepCollectionEquality().equals(other.subItems, subItems)&&(identical(other.isUpdating, isUpdating) || other.isUpdating == isUpdating));
}


@override
int get hashCode => Object.hash(runtimeType,status,cartStatus,itemModel,count,const DeepCollectionEquality().hash(selectedColors),const DeepCollectionEquality().hash(subItems),isUpdating);

@override
String toString() {
  return 'ItemsDetailsState(status: $status, cartStatus: $cartStatus, itemModel: $itemModel, count: $count, selectedColors: $selectedColors, subItems: $subItems, isUpdating: $isUpdating)';
}


}

/// @nodoc
abstract mixin class $ItemsDetailsStateCopyWith<$Res>  {
  factory $ItemsDetailsStateCopyWith(ItemsDetailsState value, $Res Function(ItemsDetailsState) _then) = _$ItemsDetailsStateCopyWithImpl;
@useResult
$Res call({
 ItemsDetailsStatus status, CartStatus cartStatus, ItemModel? itemModel, int count, List<String> selectedColors, List<Map<String, dynamic>> subItems, bool isUpdating
});


$ItemsDetailsStatusCopyWith<$Res> get status;$CartStatusCopyWith<$Res> get cartStatus;$ItemModelCopyWith<$Res>? get itemModel;

}
/// @nodoc
class _$ItemsDetailsStateCopyWithImpl<$Res>
    implements $ItemsDetailsStateCopyWith<$Res> {
  _$ItemsDetailsStateCopyWithImpl(this._self, this._then);

  final ItemsDetailsState _self;
  final $Res Function(ItemsDetailsState) _then;

/// Create a copy of ItemsDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? cartStatus = null,Object? itemModel = freezed,Object? count = null,Object? selectedColors = null,Object? subItems = null,Object? isUpdating = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ItemsDetailsStatus,cartStatus: null == cartStatus ? _self.cartStatus : cartStatus // ignore: cast_nullable_to_non_nullable
as CartStatus,itemModel: freezed == itemModel ? _self.itemModel : itemModel // ignore: cast_nullable_to_non_nullable
as ItemModel?,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,selectedColors: null == selectedColors ? _self.selectedColors : selectedColors // ignore: cast_nullable_to_non_nullable
as List<String>,subItems: null == subItems ? _self.subItems : subItems // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,isUpdating: null == isUpdating ? _self.isUpdating : isUpdating // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ItemsDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemsDetailsStatusCopyWith<$Res> get status {
  
  return $ItemsDetailsStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ItemsDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartStatusCopyWith<$Res> get cartStatus {
  
  return $CartStatusCopyWith<$Res>(_self.cartStatus, (value) {
    return _then(_self.copyWith(cartStatus: value));
  });
}/// Create a copy of ItemsDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemModelCopyWith<$Res>? get itemModel {
    if (_self.itemModel == null) {
    return null;
  }

  return $ItemModelCopyWith<$Res>(_self.itemModel!, (value) {
    return _then(_self.copyWith(itemModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [ItemsDetailsState].
extension ItemsDetailsStatePatterns on ItemsDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemsDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemsDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemsDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _ItemsDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemsDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _ItemsDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ItemsDetailsStatus status,  CartStatus cartStatus,  ItemModel? itemModel,  int count,  List<String> selectedColors,  List<Map<String, dynamic>> subItems,  bool isUpdating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemsDetailsState() when $default != null:
return $default(_that.status,_that.cartStatus,_that.itemModel,_that.count,_that.selectedColors,_that.subItems,_that.isUpdating);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ItemsDetailsStatus status,  CartStatus cartStatus,  ItemModel? itemModel,  int count,  List<String> selectedColors,  List<Map<String, dynamic>> subItems,  bool isUpdating)  $default,) {final _that = this;
switch (_that) {
case _ItemsDetailsState():
return $default(_that.status,_that.cartStatus,_that.itemModel,_that.count,_that.selectedColors,_that.subItems,_that.isUpdating);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ItemsDetailsStatus status,  CartStatus cartStatus,  ItemModel? itemModel,  int count,  List<String> selectedColors,  List<Map<String, dynamic>> subItems,  bool isUpdating)?  $default,) {final _that = this;
switch (_that) {
case _ItemsDetailsState() when $default != null:
return $default(_that.status,_that.cartStatus,_that.itemModel,_that.count,_that.selectedColors,_that.subItems,_that.isUpdating);case _:
  return null;

}
}

}

/// @nodoc


class _ItemsDetailsState implements ItemsDetailsState {
  const _ItemsDetailsState({this.status = const ItemsDetailsStatus.initial(), this.cartStatus = const CartStatus.initial(), this.itemModel, this.count = 0, final  List<String> selectedColors = const [], final  List<Map<String, dynamic>> subItems = const [{"id" : "1", "name" : "red", "active" : false}, {"id" : "2", "name" : "black", "active" : false}, {"id" : "3", "name" : "grey", "active" : false}], this.isUpdating = false}): _selectedColors = selectedColors,_subItems = subItems;
  

@override@JsonKey() final  ItemsDetailsStatus status;
@override@JsonKey() final  CartStatus cartStatus;
@override final  ItemModel? itemModel;
@override@JsonKey() final  int count;
 final  List<String> _selectedColors;
@override@JsonKey() List<String> get selectedColors {
  if (_selectedColors is EqualUnmodifiableListView) return _selectedColors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedColors);
}

 final  List<Map<String, dynamic>> _subItems;
@override@JsonKey() List<Map<String, dynamic>> get subItems {
  if (_subItems is EqualUnmodifiableListView) return _subItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subItems);
}

@override@JsonKey() final  bool isUpdating;

/// Create a copy of ItemsDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemsDetailsStateCopyWith<_ItemsDetailsState> get copyWith => __$ItemsDetailsStateCopyWithImpl<_ItemsDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemsDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.cartStatus, cartStatus) || other.cartStatus == cartStatus)&&(identical(other.itemModel, itemModel) || other.itemModel == itemModel)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._selectedColors, _selectedColors)&&const DeepCollectionEquality().equals(other._subItems, _subItems)&&(identical(other.isUpdating, isUpdating) || other.isUpdating == isUpdating));
}


@override
int get hashCode => Object.hash(runtimeType,status,cartStatus,itemModel,count,const DeepCollectionEquality().hash(_selectedColors),const DeepCollectionEquality().hash(_subItems),isUpdating);

@override
String toString() {
  return 'ItemsDetailsState(status: $status, cartStatus: $cartStatus, itemModel: $itemModel, count: $count, selectedColors: $selectedColors, subItems: $subItems, isUpdating: $isUpdating)';
}


}

/// @nodoc
abstract mixin class _$ItemsDetailsStateCopyWith<$Res> implements $ItemsDetailsStateCopyWith<$Res> {
  factory _$ItemsDetailsStateCopyWith(_ItemsDetailsState value, $Res Function(_ItemsDetailsState) _then) = __$ItemsDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 ItemsDetailsStatus status, CartStatus cartStatus, ItemModel? itemModel, int count, List<String> selectedColors, List<Map<String, dynamic>> subItems, bool isUpdating
});


@override $ItemsDetailsStatusCopyWith<$Res> get status;@override $CartStatusCopyWith<$Res> get cartStatus;@override $ItemModelCopyWith<$Res>? get itemModel;

}
/// @nodoc
class __$ItemsDetailsStateCopyWithImpl<$Res>
    implements _$ItemsDetailsStateCopyWith<$Res> {
  __$ItemsDetailsStateCopyWithImpl(this._self, this._then);

  final _ItemsDetailsState _self;
  final $Res Function(_ItemsDetailsState) _then;

/// Create a copy of ItemsDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? cartStatus = null,Object? itemModel = freezed,Object? count = null,Object? selectedColors = null,Object? subItems = null,Object? isUpdating = null,}) {
  return _then(_ItemsDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ItemsDetailsStatus,cartStatus: null == cartStatus ? _self.cartStatus : cartStatus // ignore: cast_nullable_to_non_nullable
as CartStatus,itemModel: freezed == itemModel ? _self.itemModel : itemModel // ignore: cast_nullable_to_non_nullable
as ItemModel?,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,selectedColors: null == selectedColors ? _self._selectedColors : selectedColors // ignore: cast_nullable_to_non_nullable
as List<String>,subItems: null == subItems ? _self._subItems : subItems // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,isUpdating: null == isUpdating ? _self.isUpdating : isUpdating // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ItemsDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemsDetailsStatusCopyWith<$Res> get status {
  
  return $ItemsDetailsStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ItemsDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartStatusCopyWith<$Res> get cartStatus {
  
  return $CartStatusCopyWith<$Res>(_self.cartStatus, (value) {
    return _then(_self.copyWith(cartStatus: value));
  });
}/// Create a copy of ItemsDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemModelCopyWith<$Res>? get itemModel {
    if (_self.itemModel == null) {
    return null;
  }

  return $ItemModelCopyWith<$Res>(_self.itemModel!, (value) {
    return _then(_self.copyWith(itemModel: value));
  });
}
}

// dart format on
