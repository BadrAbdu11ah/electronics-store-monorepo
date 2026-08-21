// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderDetailsEvent {

 OrderModel get orderModel;
/// Create a copy of OrderDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailsEventCopyWith<OrderDetailsEvent> get copyWith => _$OrderDetailsEventCopyWithImpl<OrderDetailsEvent>(this as OrderDetailsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailsEvent&&(identical(other.orderModel, orderModel) || other.orderModel == orderModel));
}


@override
int get hashCode => Object.hash(runtimeType,orderModel);

@override
String toString() {
  return 'OrderDetailsEvent(orderModel: $orderModel)';
}


}

/// @nodoc
abstract mixin class $OrderDetailsEventCopyWith<$Res>  {
  factory $OrderDetailsEventCopyWith(OrderDetailsEvent value, $Res Function(OrderDetailsEvent) _then) = _$OrderDetailsEventCopyWithImpl;
@useResult
$Res call({
 OrderModel orderModel
});


$OrderModelCopyWith<$Res> get orderModel;

}
/// @nodoc
class _$OrderDetailsEventCopyWithImpl<$Res>
    implements $OrderDetailsEventCopyWith<$Res> {
  _$OrderDetailsEventCopyWithImpl(this._self, this._then);

  final OrderDetailsEvent _self;
  final $Res Function(OrderDetailsEvent) _then;

/// Create a copy of OrderDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderModel = null,}) {
  return _then(_self.copyWith(
orderModel: null == orderModel ? _self.orderModel : orderModel // ignore: cast_nullable_to_non_nullable
as OrderModel,
  ));
}
/// Create a copy of OrderDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderModelCopyWith<$Res> get orderModel {
  
  return $OrderModelCopyWith<$Res>(_self.orderModel, (value) {
    return _then(_self.copyWith(orderModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderDetailsEvent].
extension OrderDetailsEventPatterns on OrderDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _LoadOrderDetails value)?  loadOrderDetails,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadOrderDetails() when loadOrderDetails != null:
return loadOrderDetails(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _LoadOrderDetails value)  loadOrderDetails,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _LoadOrderDetails():
return loadOrderDetails(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _LoadOrderDetails value)?  loadOrderDetails,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadOrderDetails() when loadOrderDetails != null:
return loadOrderDetails(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( OrderModel orderModel)?  started,TResult Function( OrderModel orderModel)?  loadOrderDetails,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.orderModel);case _LoadOrderDetails() when loadOrderDetails != null:
return loadOrderDetails(_that.orderModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( OrderModel orderModel)  started,required TResult Function( OrderModel orderModel)  loadOrderDetails,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.orderModel);case _LoadOrderDetails():
return loadOrderDetails(_that.orderModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( OrderModel orderModel)?  started,TResult? Function( OrderModel orderModel)?  loadOrderDetails,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.orderModel);case _LoadOrderDetails() when loadOrderDetails != null:
return loadOrderDetails(_that.orderModel);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements OrderDetailsEvent {
  const _Started({required this.orderModel});
  

@override final  OrderModel orderModel;

/// Create a copy of OrderDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.orderModel, orderModel) || other.orderModel == orderModel));
}


@override
int get hashCode => Object.hash(runtimeType,orderModel);

@override
String toString() {
  return 'OrderDetailsEvent.started(orderModel: $orderModel)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $OrderDetailsEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 OrderModel orderModel
});


@override $OrderModelCopyWith<$Res> get orderModel;

}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of OrderDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderModel = null,}) {
  return _then(_Started(
orderModel: null == orderModel ? _self.orderModel : orderModel // ignore: cast_nullable_to_non_nullable
as OrderModel,
  ));
}

/// Create a copy of OrderDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderModelCopyWith<$Res> get orderModel {
  
  return $OrderModelCopyWith<$Res>(_self.orderModel, (value) {
    return _then(_self.copyWith(orderModel: value));
  });
}
}

/// @nodoc


class _LoadOrderDetails implements OrderDetailsEvent {
  const _LoadOrderDetails({required this.orderModel});
  

@override final  OrderModel orderModel;

/// Create a copy of OrderDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadOrderDetailsCopyWith<_LoadOrderDetails> get copyWith => __$LoadOrderDetailsCopyWithImpl<_LoadOrderDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadOrderDetails&&(identical(other.orderModel, orderModel) || other.orderModel == orderModel));
}


@override
int get hashCode => Object.hash(runtimeType,orderModel);

@override
String toString() {
  return 'OrderDetailsEvent.loadOrderDetails(orderModel: $orderModel)';
}


}

/// @nodoc
abstract mixin class _$LoadOrderDetailsCopyWith<$Res> implements $OrderDetailsEventCopyWith<$Res> {
  factory _$LoadOrderDetailsCopyWith(_LoadOrderDetails value, $Res Function(_LoadOrderDetails) _then) = __$LoadOrderDetailsCopyWithImpl;
@override @useResult
$Res call({
 OrderModel orderModel
});


@override $OrderModelCopyWith<$Res> get orderModel;

}
/// @nodoc
class __$LoadOrderDetailsCopyWithImpl<$Res>
    implements _$LoadOrderDetailsCopyWith<$Res> {
  __$LoadOrderDetailsCopyWithImpl(this._self, this._then);

  final _LoadOrderDetails _self;
  final $Res Function(_LoadOrderDetails) _then;

/// Create a copy of OrderDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderModel = null,}) {
  return _then(_LoadOrderDetails(
orderModel: null == orderModel ? _self.orderModel : orderModel // ignore: cast_nullable_to_non_nullable
as OrderModel,
  ));
}

/// Create a copy of OrderDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderModelCopyWith<$Res> get orderModel {
  
  return $OrderModelCopyWith<$Res>(_self.orderModel, (value) {
    return _then(_self.copyWith(orderModel: value));
  });
}
}

/// @nodoc
mixin _$OrderDetailsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderDetailsState()';
}


}

/// @nodoc
class $OrderDetailsStateCopyWith<$Res>  {
$OrderDetailsStateCopyWith(OrderDetailsState _, $Res Function(OrderDetailsState) __);
}


/// Adds pattern-matching-related methods to [OrderDetailsState].
extension OrderDetailsStatePatterns on OrderDetailsState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( OrderDetailsModel orderDetailsModel,  String lang)?  loaded,TResult Function( String message)?  serverFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.orderDetailsModel,_that.lang);case _ServerFailure() when serverFailure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( OrderDetailsModel orderDetailsModel,  String lang)  loaded,required TResult Function( String message)  serverFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.orderDetailsModel,_that.lang);case _ServerFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( OrderDetailsModel orderDetailsModel,  String lang)?  loaded,TResult? Function( String message)?  serverFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.orderDetailsModel,_that.lang);case _ServerFailure() when serverFailure != null:
return serverFailure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements OrderDetailsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderDetailsState.initial()';
}


}




/// @nodoc


class _Loading implements OrderDetailsState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderDetailsState.loading()';
}


}




/// @nodoc


class _Loaded implements OrderDetailsState {
  const _Loaded({required this.orderDetailsModel, this.lang = "en"});
  

 final  OrderDetailsModel orderDetailsModel;
@JsonKey() final  String lang;

/// Create a copy of OrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.orderDetailsModel, orderDetailsModel) || other.orderDetailsModel == orderDetailsModel)&&(identical(other.lang, lang) || other.lang == lang));
}


@override
int get hashCode => Object.hash(runtimeType,orderDetailsModel,lang);

@override
String toString() {
  return 'OrderDetailsState.loaded(orderDetailsModel: $orderDetailsModel, lang: $lang)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $OrderDetailsStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 OrderDetailsModel orderDetailsModel, String lang
});


$OrderDetailsModelCopyWith<$Res> get orderDetailsModel;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of OrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? orderDetailsModel = null,Object? lang = null,}) {
  return _then(_Loaded(
orderDetailsModel: null == orderDetailsModel ? _self.orderDetailsModel : orderDetailsModel // ignore: cast_nullable_to_non_nullable
as OrderDetailsModel,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of OrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderDetailsModelCopyWith<$Res> get orderDetailsModel {
  
  return $OrderDetailsModelCopyWith<$Res>(_self.orderDetailsModel, (value) {
    return _then(_self.copyWith(orderDetailsModel: value));
  });
}
}

/// @nodoc


class _ServerFailure implements OrderDetailsState {
  const _ServerFailure(this.message);
  

 final  String message;

/// Create a copy of OrderDetailsState
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
  return 'OrderDetailsState.serverFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ServerFailureCopyWith<$Res> implements $OrderDetailsStateCopyWith<$Res> {
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

/// Create a copy of OrderDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ServerFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
