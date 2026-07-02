// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_boarding_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnBoardingModel {

 String get image; String get title; String get body;
/// Create a copy of OnBoardingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnBoardingModelCopyWith<OnBoardingModel> get copyWith => _$OnBoardingModelCopyWithImpl<OnBoardingModel>(this as OnBoardingModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnBoardingModel&&(identical(other.image, image) || other.image == image)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body));
}


@override
int get hashCode => Object.hash(runtimeType,image,title,body);

@override
String toString() {
  return 'OnBoardingModel(image: $image, title: $title, body: $body)';
}


}

/// @nodoc
abstract mixin class $OnBoardingModelCopyWith<$Res>  {
  factory $OnBoardingModelCopyWith(OnBoardingModel value, $Res Function(OnBoardingModel) _then) = _$OnBoardingModelCopyWithImpl;
@useResult
$Res call({
 String image, String title, String body
});




}
/// @nodoc
class _$OnBoardingModelCopyWithImpl<$Res>
    implements $OnBoardingModelCopyWith<$Res> {
  _$OnBoardingModelCopyWithImpl(this._self, this._then);

  final OnBoardingModel _self;
  final $Res Function(OnBoardingModel) _then;

/// Create a copy of OnBoardingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? image = null,Object? title = null,Object? body = null,}) {
  return _then(_self.copyWith(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OnBoardingModel].
extension OnBoardingModelPatterns on OnBoardingModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnBoardingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnBoardingModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnBoardingModel value)  $default,){
final _that = this;
switch (_that) {
case _OnBoardingModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnBoardingModel value)?  $default,){
final _that = this;
switch (_that) {
case _OnBoardingModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String image,  String title,  String body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnBoardingModel() when $default != null:
return $default(_that.image,_that.title,_that.body);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String image,  String title,  String body)  $default,) {final _that = this;
switch (_that) {
case _OnBoardingModel():
return $default(_that.image,_that.title,_that.body);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String image,  String title,  String body)?  $default,) {final _that = this;
switch (_that) {
case _OnBoardingModel() when $default != null:
return $default(_that.image,_that.title,_that.body);case _:
  return null;

}
}

}

/// @nodoc


class _OnBoardingModel extends OnBoardingModel {
  const _OnBoardingModel({required this.image, required this.title, required this.body}): super._();
  

@override final  String image;
@override final  String title;
@override final  String body;

/// Create a copy of OnBoardingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnBoardingModelCopyWith<_OnBoardingModel> get copyWith => __$OnBoardingModelCopyWithImpl<_OnBoardingModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnBoardingModel&&(identical(other.image, image) || other.image == image)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body));
}


@override
int get hashCode => Object.hash(runtimeType,image,title,body);

@override
String toString() {
  return 'OnBoardingModel(image: $image, title: $title, body: $body)';
}


}

/// @nodoc
abstract mixin class _$OnBoardingModelCopyWith<$Res> implements $OnBoardingModelCopyWith<$Res> {
  factory _$OnBoardingModelCopyWith(_OnBoardingModel value, $Res Function(_OnBoardingModel) _then) = __$OnBoardingModelCopyWithImpl;
@override @useResult
$Res call({
 String image, String title, String body
});




}
/// @nodoc
class __$OnBoardingModelCopyWithImpl<$Res>
    implements _$OnBoardingModelCopyWith<$Res> {
  __$OnBoardingModelCopyWithImpl(this._self, this._then);

  final _OnBoardingModel _self;
  final $Res Function(_OnBoardingModel) _then;

/// Create a copy of OnBoardingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? image = null,Object? title = null,Object? body = null,}) {
  return _then(_OnBoardingModel(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
