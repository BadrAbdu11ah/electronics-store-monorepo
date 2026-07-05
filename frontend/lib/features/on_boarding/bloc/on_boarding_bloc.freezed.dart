// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_boarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnBoardingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnBoardingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnBoardingEvent()';
}


}

/// @nodoc
class $OnBoardingEventCopyWith<$Res>  {
$OnBoardingEventCopyWith(OnBoardingEvent _, $Res Function(OnBoardingEvent) __);
}


/// Adds pattern-matching-related methods to [OnBoardingEvent].
extension OnBoardingEventPatterns on OnBoardingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _PageChanged value)?  pageChanged,TResult Function( _NextPage value)?  nextPage,TResult Function( _Skip value)?  skip,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PageChanged() when pageChanged != null:
return pageChanged(_that);case _NextPage() when nextPage != null:
return nextPage(_that);case _Skip() when skip != null:
return skip(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _PageChanged value)  pageChanged,required TResult Function( _NextPage value)  nextPage,required TResult Function( _Skip value)  skip,}){
final _that = this;
switch (_that) {
case _PageChanged():
return pageChanged(_that);case _NextPage():
return nextPage(_that);case _Skip():
return skip(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _PageChanged value)?  pageChanged,TResult? Function( _NextPage value)?  nextPage,TResult? Function( _Skip value)?  skip,}){
final _that = this;
switch (_that) {
case _PageChanged() when pageChanged != null:
return pageChanged(_that);case _NextPage() when nextPage != null:
return nextPage(_that);case _Skip() when skip != null:
return skip(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int index)?  pageChanged,TResult Function( int listLength)?  nextPage,TResult Function()?  skip,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PageChanged() when pageChanged != null:
return pageChanged(_that.index);case _NextPage() when nextPage != null:
return nextPage(_that.listLength);case _Skip() when skip != null:
return skip();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int index)  pageChanged,required TResult Function( int listLength)  nextPage,required TResult Function()  skip,}) {final _that = this;
switch (_that) {
case _PageChanged():
return pageChanged(_that.index);case _NextPage():
return nextPage(_that.listLength);case _Skip():
return skip();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int index)?  pageChanged,TResult? Function( int listLength)?  nextPage,TResult? Function()?  skip,}) {final _that = this;
switch (_that) {
case _PageChanged() when pageChanged != null:
return pageChanged(_that.index);case _NextPage() when nextPage != null:
return nextPage(_that.listLength);case _Skip() when skip != null:
return skip();case _:
  return null;

}
}

}

/// @nodoc


class _PageChanged implements OnBoardingEvent {
  const _PageChanged({required this.index});
  

 final  int index;

/// Create a copy of OnBoardingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PageChangedCopyWith<_PageChanged> get copyWith => __$PageChangedCopyWithImpl<_PageChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PageChanged&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'OnBoardingEvent.pageChanged(index: $index)';
}


}

/// @nodoc
abstract mixin class _$PageChangedCopyWith<$Res> implements $OnBoardingEventCopyWith<$Res> {
  factory _$PageChangedCopyWith(_PageChanged value, $Res Function(_PageChanged) _then) = __$PageChangedCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class __$PageChangedCopyWithImpl<$Res>
    implements _$PageChangedCopyWith<$Res> {
  __$PageChangedCopyWithImpl(this._self, this._then);

  final _PageChanged _self;
  final $Res Function(_PageChanged) _then;

/// Create a copy of OnBoardingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(_PageChanged(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _NextPage implements OnBoardingEvent {
  const _NextPage({required this.listLength});
  

 final  int listLength;

/// Create a copy of OnBoardingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NextPageCopyWith<_NextPage> get copyWith => __$NextPageCopyWithImpl<_NextPage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NextPage&&(identical(other.listLength, listLength) || other.listLength == listLength));
}


@override
int get hashCode => Object.hash(runtimeType,listLength);

@override
String toString() {
  return 'OnBoardingEvent.nextPage(listLength: $listLength)';
}


}

/// @nodoc
abstract mixin class _$NextPageCopyWith<$Res> implements $OnBoardingEventCopyWith<$Res> {
  factory _$NextPageCopyWith(_NextPage value, $Res Function(_NextPage) _then) = __$NextPageCopyWithImpl;
@useResult
$Res call({
 int listLength
});




}
/// @nodoc
class __$NextPageCopyWithImpl<$Res>
    implements _$NextPageCopyWith<$Res> {
  __$NextPageCopyWithImpl(this._self, this._then);

  final _NextPage _self;
  final $Res Function(_NextPage) _then;

/// Create a copy of OnBoardingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? listLength = null,}) {
  return _then(_NextPage(
listLength: null == listLength ? _self.listLength : listLength // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Skip implements OnBoardingEvent {
  const _Skip();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Skip);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnBoardingEvent.skip()';
}


}




/// @nodoc
mixin _$OnBoardingStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnBoardingStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnBoardingStatus()';
}


}

/// @nodoc
class $OnBoardingStatusCopyWith<$Res>  {
$OnBoardingStatusCopyWith(OnBoardingStatus _, $Res Function(OnBoardingStatus) __);
}


/// Adds pattern-matching-related methods to [OnBoardingStatus].
extension OnBoardingStatusPatterns on OnBoardingStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _NavigateToLogin value)?  navigateToLogin,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _NavigateToLogin() when navigateToLogin != null:
return navigateToLogin(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _NavigateToLogin value)  navigateToLogin,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _NavigateToLogin():
return navigateToLogin(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _NavigateToLogin value)?  navigateToLogin,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _NavigateToLogin() when navigateToLogin != null:
return navigateToLogin(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  navigateToLogin,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _NavigateToLogin() when navigateToLogin != null:
return navigateToLogin();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  navigateToLogin,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _NavigateToLogin():
return navigateToLogin();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  navigateToLogin,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _NavigateToLogin() when navigateToLogin != null:
return navigateToLogin();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements OnBoardingStatus {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnBoardingStatus.initial()';
}


}




/// @nodoc


class _NavigateToLogin implements OnBoardingStatus {
  const _NavigateToLogin();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NavigateToLogin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnBoardingStatus.navigateToLogin()';
}


}




/// @nodoc
mixin _$OnBoardingState {

 OnBoardingStatus get status; int get currentPage;
/// Create a copy of OnBoardingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnBoardingStateCopyWith<OnBoardingState> get copyWith => _$OnBoardingStateCopyWithImpl<OnBoardingState>(this as OnBoardingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnBoardingState&&(identical(other.status, status) || other.status == status)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage));
}


@override
int get hashCode => Object.hash(runtimeType,status,currentPage);

@override
String toString() {
  return 'OnBoardingState(status: $status, currentPage: $currentPage)';
}


}

/// @nodoc
abstract mixin class $OnBoardingStateCopyWith<$Res>  {
  factory $OnBoardingStateCopyWith(OnBoardingState value, $Res Function(OnBoardingState) _then) = _$OnBoardingStateCopyWithImpl;
@useResult
$Res call({
 OnBoardingStatus status, int currentPage
});


$OnBoardingStatusCopyWith<$Res> get status;

}
/// @nodoc
class _$OnBoardingStateCopyWithImpl<$Res>
    implements $OnBoardingStateCopyWith<$Res> {
  _$OnBoardingStateCopyWithImpl(this._self, this._then);

  final OnBoardingState _self;
  final $Res Function(OnBoardingState) _then;

/// Create a copy of OnBoardingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? currentPage = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OnBoardingStatus,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of OnBoardingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OnBoardingStatusCopyWith<$Res> get status {
  
  return $OnBoardingStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [OnBoardingState].
extension OnBoardingStatePatterns on OnBoardingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnBoardingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnBoardingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnBoardingState value)  $default,){
final _that = this;
switch (_that) {
case _OnBoardingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnBoardingState value)?  $default,){
final _that = this;
switch (_that) {
case _OnBoardingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OnBoardingStatus status,  int currentPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnBoardingState() when $default != null:
return $default(_that.status,_that.currentPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OnBoardingStatus status,  int currentPage)  $default,) {final _that = this;
switch (_that) {
case _OnBoardingState():
return $default(_that.status,_that.currentPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OnBoardingStatus status,  int currentPage)?  $default,) {final _that = this;
switch (_that) {
case _OnBoardingState() when $default != null:
return $default(_that.status,_that.currentPage);case _:
  return null;

}
}

}

/// @nodoc


class _OnBoardingState implements OnBoardingState {
  const _OnBoardingState({this.status = const OnBoardingStatus.initial(), this.currentPage = 0});
  

@override@JsonKey() final  OnBoardingStatus status;
@override@JsonKey() final  int currentPage;

/// Create a copy of OnBoardingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnBoardingStateCopyWith<_OnBoardingState> get copyWith => __$OnBoardingStateCopyWithImpl<_OnBoardingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnBoardingState&&(identical(other.status, status) || other.status == status)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage));
}


@override
int get hashCode => Object.hash(runtimeType,status,currentPage);

@override
String toString() {
  return 'OnBoardingState(status: $status, currentPage: $currentPage)';
}


}

/// @nodoc
abstract mixin class _$OnBoardingStateCopyWith<$Res> implements $OnBoardingStateCopyWith<$Res> {
  factory _$OnBoardingStateCopyWith(_OnBoardingState value, $Res Function(_OnBoardingState) _then) = __$OnBoardingStateCopyWithImpl;
@override @useResult
$Res call({
 OnBoardingStatus status, int currentPage
});


@override $OnBoardingStatusCopyWith<$Res> get status;

}
/// @nodoc
class __$OnBoardingStateCopyWithImpl<$Res>
    implements _$OnBoardingStateCopyWith<$Res> {
  __$OnBoardingStateCopyWithImpl(this._self, this._then);

  final _OnBoardingState _self;
  final $Res Function(_OnBoardingState) _then;

/// Create a copy of OnBoardingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? currentPage = null,}) {
  return _then(_OnBoardingState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OnBoardingStatus,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of OnBoardingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OnBoardingStatusCopyWith<$Res> get status {
  
  return $OnBoardingStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

// dart format on
