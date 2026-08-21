// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddressViewEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressViewEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressViewEvent()';
}


}

/// @nodoc
class $AddressViewEventCopyWith<$Res>  {
$AddressViewEventCopyWith(AddressViewEvent _, $Res Function(AddressViewEvent) __);
}


/// Adds pattern-matching-related methods to [AddressViewEvent].
extension AddressViewEventPatterns on AddressViewEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _LoadAddresses value)?  loadAddresses,TResult Function( _DeleteAddress value)?  deleteAddress,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadAddresses() when loadAddresses != null:
return loadAddresses(_that);case _DeleteAddress() when deleteAddress != null:
return deleteAddress(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _LoadAddresses value)  loadAddresses,required TResult Function( _DeleteAddress value)  deleteAddress,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _LoadAddresses():
return loadAddresses(_that);case _DeleteAddress():
return deleteAddress(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _LoadAddresses value)?  loadAddresses,TResult? Function( _DeleteAddress value)?  deleteAddress,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadAddresses() when loadAddresses != null:
return loadAddresses(_that);case _DeleteAddress() when deleteAddress != null:
return deleteAddress(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  loadAddresses,TResult Function( int id)?  deleteAddress,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadAddresses() when loadAddresses != null:
return loadAddresses();case _DeleteAddress() when deleteAddress != null:
return deleteAddress(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  loadAddresses,required TResult Function( int id)  deleteAddress,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _LoadAddresses():
return loadAddresses();case _DeleteAddress():
return deleteAddress(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  loadAddresses,TResult? Function( int id)?  deleteAddress,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadAddresses() when loadAddresses != null:
return loadAddresses();case _DeleteAddress() when deleteAddress != null:
return deleteAddress(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AddressViewEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressViewEvent.started()';
}


}




/// @nodoc


class _LoadAddresses implements AddressViewEvent {
  const _LoadAddresses();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadAddresses);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressViewEvent.loadAddresses()';
}


}




/// @nodoc


class _DeleteAddress implements AddressViewEvent {
  const _DeleteAddress(this.id);
  

 final  int id;

/// Create a copy of AddressViewEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteAddressCopyWith<_DeleteAddress> get copyWith => __$DeleteAddressCopyWithImpl<_DeleteAddress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteAddress&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'AddressViewEvent.deleteAddress(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteAddressCopyWith<$Res> implements $AddressViewEventCopyWith<$Res> {
  factory _$DeleteAddressCopyWith(_DeleteAddress value, $Res Function(_DeleteAddress) _then) = __$DeleteAddressCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteAddressCopyWithImpl<$Res>
    implements _$DeleteAddressCopyWith<$Res> {
  __$DeleteAddressCopyWithImpl(this._self, this._then);

  final _DeleteAddress _self;
  final $Res Function(_DeleteAddress) _then;

/// Create a copy of AddressViewEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteAddress(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$AddressViewStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressViewStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressViewStatus()';
}


}

/// @nodoc
class $AddressViewStatusCopyWith<$Res>  {
$AddressViewStatusCopyWith(AddressViewStatus _, $Res Function(AddressViewStatus) __);
}


/// Adds pattern-matching-related methods to [AddressViewStatus].
extension AddressViewStatusPatterns on AddressViewStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _NoData value)?  noData,TResult Function( _ServerFailure value)?  serverFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _NoData value)  noData,required TResult Function( _ServerFailure value)  serverFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _NoData value)?  noData,TResult? Function( _ServerFailure value)?  serverFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
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
return loading();case _Loaded() when loaded != null:
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
return loading();case _Loaded():
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
return loading();case _Loaded() when loaded != null:
return loaded();case _NoData() when noData != null:
return noData(_that.message);case _ServerFailure() when serverFailure != null:
return serverFailure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AddressViewStatus {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressViewStatus.initial()';
}


}




/// @nodoc


class _Loading implements AddressViewStatus {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressViewStatus.loading()';
}


}




/// @nodoc


class _Loaded implements AddressViewStatus {
  const _Loaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressViewStatus.loaded()';
}


}




/// @nodoc


class _NoData implements AddressViewStatus {
  const _NoData(this.message);
  

 final  String message;

/// Create a copy of AddressViewStatus
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
  return 'AddressViewStatus.noData(message: $message)';
}


}

/// @nodoc
abstract mixin class _$NoDataCopyWith<$Res> implements $AddressViewStatusCopyWith<$Res> {
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

/// Create a copy of AddressViewStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_NoData(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ServerFailure implements AddressViewStatus {
  const _ServerFailure(this.message);
  

 final  String message;

/// Create a copy of AddressViewStatus
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
  return 'AddressViewStatus.serverFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ServerFailureCopyWith<$Res> implements $AddressViewStatusCopyWith<$Res> {
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

/// Create a copy of AddressViewStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ServerFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$DeleteStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteStatus()';
}


}

/// @nodoc
class $DeleteStatusCopyWith<$Res>  {
$DeleteStatusCopyWith(DeleteStatus _, $Res Function(DeleteStatus) __);
}


/// Adds pattern-matching-related methods to [DeleteStatus].
extension DeleteStatusPatterns on DeleteStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _DeleteInitial value)?  initial,TResult Function( _DeleteSuccess value)?  success,TResult Function( _DeleteFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteInitial() when initial != null:
return initial(_that);case _DeleteSuccess() when success != null:
return success(_that);case _DeleteFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _DeleteInitial value)  initial,required TResult Function( _DeleteSuccess value)  success,required TResult Function( _DeleteFailure value)  failure,}){
final _that = this;
switch (_that) {
case _DeleteInitial():
return initial(_that);case _DeleteSuccess():
return success(_that);case _DeleteFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _DeleteInitial value)?  initial,TResult? Function( _DeleteSuccess value)?  success,TResult? Function( _DeleteFailure value)?  failure,}){
final _that = this;
switch (_that) {
case _DeleteInitial() when initial != null:
return initial(_that);case _DeleteSuccess() when success != null:
return success(_that);case _DeleteFailure() when failure != null:
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
case _DeleteInitial() when initial != null:
return initial();case _DeleteSuccess() when success != null:
return success(_that.message);case _DeleteFailure() when failure != null:
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
case _DeleteInitial():
return initial();case _DeleteSuccess():
return success(_that.message);case _DeleteFailure():
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
case _DeleteInitial() when initial != null:
return initial();case _DeleteSuccess() when success != null:
return success(_that.message);case _DeleteFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _DeleteInitial implements DeleteStatus {
  const _DeleteInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteStatus.initial()';
}


}




/// @nodoc


class _DeleteSuccess implements DeleteStatus {
  const _DeleteSuccess(this.message);
  

 final  String message;

/// Create a copy of DeleteStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteSuccessCopyWith<_DeleteSuccess> get copyWith => __$DeleteSuccessCopyWithImpl<_DeleteSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DeleteStatus.success(message: $message)';
}


}

/// @nodoc
abstract mixin class _$DeleteSuccessCopyWith<$Res> implements $DeleteStatusCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(_DeleteSuccess value, $Res Function(_DeleteSuccess) _then) = __$DeleteSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$DeleteSuccessCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(this._self, this._then);

  final _DeleteSuccess _self;
  final $Res Function(_DeleteSuccess) _then;

/// Create a copy of DeleteStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_DeleteSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DeleteFailure implements DeleteStatus {
  const _DeleteFailure(this.message);
  

 final  String message;

/// Create a copy of DeleteStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteFailureCopyWith<_DeleteFailure> get copyWith => __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DeleteStatus.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$DeleteFailureCopyWith<$Res> implements $DeleteStatusCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(_DeleteFailure value, $Res Function(_DeleteFailure) _then) = __$DeleteFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$DeleteFailureCopyWithImpl<$Res>
    implements _$DeleteFailureCopyWith<$Res> {
  __$DeleteFailureCopyWithImpl(this._self, this._then);

  final _DeleteFailure _self;
  final $Res Function(_DeleteFailure) _then;

/// Create a copy of DeleteStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_DeleteFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AddressViewState {

 AddressViewStatus get status; DeleteStatus get deleteState; List<AddressModel> get addresses;
/// Create a copy of AddressViewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressViewStateCopyWith<AddressViewState> get copyWith => _$AddressViewStateCopyWithImpl<AddressViewState>(this as AddressViewState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressViewState&&(identical(other.status, status) || other.status == status)&&(identical(other.deleteState, deleteState) || other.deleteState == deleteState)&&const DeepCollectionEquality().equals(other.addresses, addresses));
}


@override
int get hashCode => Object.hash(runtimeType,status,deleteState,const DeepCollectionEquality().hash(addresses));

@override
String toString() {
  return 'AddressViewState(status: $status, deleteState: $deleteState, addresses: $addresses)';
}


}

/// @nodoc
abstract mixin class $AddressViewStateCopyWith<$Res>  {
  factory $AddressViewStateCopyWith(AddressViewState value, $Res Function(AddressViewState) _then) = _$AddressViewStateCopyWithImpl;
@useResult
$Res call({
 AddressViewStatus status, DeleteStatus deleteState, List<AddressModel> addresses
});


$AddressViewStatusCopyWith<$Res> get status;$DeleteStatusCopyWith<$Res> get deleteState;

}
/// @nodoc
class _$AddressViewStateCopyWithImpl<$Res>
    implements $AddressViewStateCopyWith<$Res> {
  _$AddressViewStateCopyWithImpl(this._self, this._then);

  final AddressViewState _self;
  final $Res Function(AddressViewState) _then;

/// Create a copy of AddressViewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? deleteState = null,Object? addresses = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AddressViewStatus,deleteState: null == deleteState ? _self.deleteState : deleteState // ignore: cast_nullable_to_non_nullable
as DeleteStatus,addresses: null == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<AddressModel>,
  ));
}
/// Create a copy of AddressViewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressViewStatusCopyWith<$Res> get status {
  
  return $AddressViewStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of AddressViewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeleteStatusCopyWith<$Res> get deleteState {
  
  return $DeleteStatusCopyWith<$Res>(_self.deleteState, (value) {
    return _then(_self.copyWith(deleteState: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddressViewState].
extension AddressViewStatePatterns on AddressViewState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressViewState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressViewState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressViewState value)  $default,){
final _that = this;
switch (_that) {
case _AddressViewState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressViewState value)?  $default,){
final _that = this;
switch (_that) {
case _AddressViewState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AddressViewStatus status,  DeleteStatus deleteState,  List<AddressModel> addresses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressViewState() when $default != null:
return $default(_that.status,_that.deleteState,_that.addresses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AddressViewStatus status,  DeleteStatus deleteState,  List<AddressModel> addresses)  $default,) {final _that = this;
switch (_that) {
case _AddressViewState():
return $default(_that.status,_that.deleteState,_that.addresses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AddressViewStatus status,  DeleteStatus deleteState,  List<AddressModel> addresses)?  $default,) {final _that = this;
switch (_that) {
case _AddressViewState() when $default != null:
return $default(_that.status,_that.deleteState,_that.addresses);case _:
  return null;

}
}

}

/// @nodoc


class _AddressViewState implements AddressViewState {
  const _AddressViewState({this.status = const AddressViewStatus.initial(), this.deleteState = const DeleteStatus.initial(), final  List<AddressModel> addresses = const []}): _addresses = addresses;
  

@override@JsonKey() final  AddressViewStatus status;
@override@JsonKey() final  DeleteStatus deleteState;
 final  List<AddressModel> _addresses;
@override@JsonKey() List<AddressModel> get addresses {
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addresses);
}


/// Create a copy of AddressViewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressViewStateCopyWith<_AddressViewState> get copyWith => __$AddressViewStateCopyWithImpl<_AddressViewState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressViewState&&(identical(other.status, status) || other.status == status)&&(identical(other.deleteState, deleteState) || other.deleteState == deleteState)&&const DeepCollectionEquality().equals(other._addresses, _addresses));
}


@override
int get hashCode => Object.hash(runtimeType,status,deleteState,const DeepCollectionEquality().hash(_addresses));

@override
String toString() {
  return 'AddressViewState(status: $status, deleteState: $deleteState, addresses: $addresses)';
}


}

/// @nodoc
abstract mixin class _$AddressViewStateCopyWith<$Res> implements $AddressViewStateCopyWith<$Res> {
  factory _$AddressViewStateCopyWith(_AddressViewState value, $Res Function(_AddressViewState) _then) = __$AddressViewStateCopyWithImpl;
@override @useResult
$Res call({
 AddressViewStatus status, DeleteStatus deleteState, List<AddressModel> addresses
});


@override $AddressViewStatusCopyWith<$Res> get status;@override $DeleteStatusCopyWith<$Res> get deleteState;

}
/// @nodoc
class __$AddressViewStateCopyWithImpl<$Res>
    implements _$AddressViewStateCopyWith<$Res> {
  __$AddressViewStateCopyWithImpl(this._self, this._then);

  final _AddressViewState _self;
  final $Res Function(_AddressViewState) _then;

/// Create a copy of AddressViewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? deleteState = null,Object? addresses = null,}) {
  return _then(_AddressViewState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AddressViewStatus,deleteState: null == deleteState ? _self.deleteState : deleteState // ignore: cast_nullable_to_non_nullable
as DeleteStatus,addresses: null == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<AddressModel>,
  ));
}

/// Create a copy of AddressViewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressViewStatusCopyWith<$Res> get status {
  
  return $AddressViewStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of AddressViewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeleteStatusCopyWith<$Res> get deleteState {
  
  return $DeleteStatusCopyWith<$Res>(_self.deleteState, (value) {
    return _then(_self.copyWith(deleteState: value));
  });
}
}

// dart format on
