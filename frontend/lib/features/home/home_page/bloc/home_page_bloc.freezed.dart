// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomePageEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageEvent()';
}


}

/// @nodoc
class $HomePageEventCopyWith<$Res>  {
$HomePageEventCopyWith(HomePageEvent _, $Res Function(HomePageEvent) __);
}


/// Adds pattern-matching-related methods to [HomePageEvent].
extension HomePageEventPatterns on HomePageEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _LoadData value)?  loadData,TResult Function( _SearchData value)?  searchData,TResult Function( _SearchEmpty value)?  searchEmpty,TResult Function( _Logout value)?  logout,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadData() when loadData != null:
return loadData(_that);case _SearchData() when searchData != null:
return searchData(_that);case _SearchEmpty() when searchEmpty != null:
return searchEmpty(_that);case _Logout() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _LoadData value)  loadData,required TResult Function( _SearchData value)  searchData,required TResult Function( _SearchEmpty value)  searchEmpty,required TResult Function( _Logout value)  logout,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _LoadData():
return loadData(_that);case _SearchData():
return searchData(_that);case _SearchEmpty():
return searchEmpty(_that);case _Logout():
return logout(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _LoadData value)?  loadData,TResult? Function( _SearchData value)?  searchData,TResult? Function( _SearchEmpty value)?  searchEmpty,TResult? Function( _Logout value)?  logout,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadData() when loadData != null:
return loadData(_that);case _SearchData() when searchData != null:
return searchData(_that);case _SearchEmpty() when searchEmpty != null:
return searchEmpty(_that);case _Logout() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  loadData,TResult Function( String query)?  searchData,TResult Function()?  searchEmpty,TResult Function()?  logout,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadData() when loadData != null:
return loadData();case _SearchData() when searchData != null:
return searchData(_that.query);case _SearchEmpty() when searchEmpty != null:
return searchEmpty();case _Logout() when logout != null:
return logout();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  loadData,required TResult Function( String query)  searchData,required TResult Function()  searchEmpty,required TResult Function()  logout,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _LoadData():
return loadData();case _SearchData():
return searchData(_that.query);case _SearchEmpty():
return searchEmpty();case _Logout():
return logout();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  loadData,TResult? Function( String query)?  searchData,TResult? Function()?  searchEmpty,TResult? Function()?  logout,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadData() when loadData != null:
return loadData();case _SearchData() when searchData != null:
return searchData(_that.query);case _SearchEmpty() when searchEmpty != null:
return searchEmpty();case _Logout() when logout != null:
return logout();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements HomePageEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageEvent.started()';
}


}




/// @nodoc


class _LoadData implements HomePageEvent {
  const _LoadData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageEvent.loadData()';
}


}




/// @nodoc


class _SearchData implements HomePageEvent {
  const _SearchData(this.query);
  

 final  String query;

/// Create a copy of HomePageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchDataCopyWith<_SearchData> get copyWith => __$SearchDataCopyWithImpl<_SearchData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchData&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'HomePageEvent.searchData(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchDataCopyWith<$Res> implements $HomePageEventCopyWith<$Res> {
  factory _$SearchDataCopyWith(_SearchData value, $Res Function(_SearchData) _then) = __$SearchDataCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$SearchDataCopyWithImpl<$Res>
    implements _$SearchDataCopyWith<$Res> {
  __$SearchDataCopyWithImpl(this._self, this._then);

  final _SearchData _self;
  final $Res Function(_SearchData) _then;

/// Create a copy of HomePageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_SearchData(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SearchEmpty implements HomePageEvent {
  const _SearchEmpty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchEmpty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageEvent.searchEmpty()';
}


}




/// @nodoc


class _Logout implements HomePageEvent {
  const _Logout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Logout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageEvent.logout()';
}


}




/// @nodoc
mixin _$HomePageState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePageState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageState()';
}


}

/// @nodoc
class $HomePageStateCopyWith<$Res>  {
$HomePageStateCopyWith(HomePageState _, $Res Function(HomePageState) __);
}


/// Adds pattern-matching-related methods to [HomePageState].
extension HomePageStatePatterns on HomePageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _NoData value)?  noData,TResult Function( _LoggedOut value)?  loggedOut,TResult Function( _ServerFailure value)?  serverFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _NoData() when noData != null:
return noData(_that);case _LoggedOut() when loggedOut != null:
return loggedOut(_that);case _ServerFailure() when serverFailure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _NoData value)  noData,required TResult Function( _LoggedOut value)  loggedOut,required TResult Function( _ServerFailure value)  serverFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _NoData():
return noData(_that);case _LoggedOut():
return loggedOut(_that);case _ServerFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _NoData value)?  noData,TResult? Function( _LoggedOut value)?  loggedOut,TResult? Function( _ServerFailure value)?  serverFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _NoData() when noData != null:
return noData(_that);case _LoggedOut() when loggedOut != null:
return loggedOut(_that);case _ServerFailure() when serverFailure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String lang,  List<CategoryModel> categories,  List<ItemModel> items,  SettingModel settings)?  loaded,TResult Function( String message)?  noData,TResult Function()?  loggedOut,TResult Function( String message)?  serverFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.lang,_that.categories,_that.items,_that.settings);case _NoData() when noData != null:
return noData(_that.message);case _LoggedOut() when loggedOut != null:
return loggedOut();case _ServerFailure() when serverFailure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String lang,  List<CategoryModel> categories,  List<ItemModel> items,  SettingModel settings)  loaded,required TResult Function( String message)  noData,required TResult Function()  loggedOut,required TResult Function( String message)  serverFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.lang,_that.categories,_that.items,_that.settings);case _NoData():
return noData(_that.message);case _LoggedOut():
return loggedOut();case _ServerFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String lang,  List<CategoryModel> categories,  List<ItemModel> items,  SettingModel settings)?  loaded,TResult? Function( String message)?  noData,TResult? Function()?  loggedOut,TResult? Function( String message)?  serverFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.lang,_that.categories,_that.items,_that.settings);case _NoData() when noData != null:
return noData(_that.message);case _LoggedOut() when loggedOut != null:
return loggedOut();case _ServerFailure() when serverFailure != null:
return serverFailure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomePageState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageState.initial()';
}


}




/// @nodoc


class _Loading implements HomePageState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageState.loading()';
}


}




/// @nodoc


class _Loaded implements HomePageState {
  const _Loaded({required this.lang, required final  List<CategoryModel> categories, required final  List<ItemModel> items, required this.settings}): _categories = categories,_items = items;
  

 final  String lang;
 final  List<CategoryModel> _categories;
 List<CategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<ItemModel> _items;
 List<ItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  SettingModel settings;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.lang, lang) || other.lang == lang)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.settings, settings) || other.settings == settings));
}


@override
int get hashCode => Object.hash(runtimeType,lang,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_items),settings);

@override
String toString() {
  return 'HomePageState.loaded(lang: $lang, categories: $categories, items: $items, settings: $settings)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $HomePageStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 String lang, List<CategoryModel> categories, List<ItemModel> items, SettingModel settings
});


$SettingModelCopyWith<$Res> get settings;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? lang = null,Object? categories = null,Object? items = null,Object? settings = null,}) {
  return _then(_Loaded(
lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ItemModel>,settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as SettingModel,
  ));
}

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingModelCopyWith<$Res> get settings {
  
  return $SettingModelCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}

/// @nodoc


class _NoData implements HomePageState {
  const _NoData(this.message);
  

 final  String message;

/// Create a copy of HomePageState
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
  return 'HomePageState.noData(message: $message)';
}


}

/// @nodoc
abstract mixin class _$NoDataCopyWith<$Res> implements $HomePageStateCopyWith<$Res> {
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

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_NoData(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoggedOut implements HomePageState {
  const _LoggedOut();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoggedOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageState.loggedOut()';
}


}




/// @nodoc


class _ServerFailure implements HomePageState {
  const _ServerFailure(this.message);
  

 final  String message;

/// Create a copy of HomePageState
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
  return 'HomePageState.serverFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ServerFailureCopyWith<$Res> implements $HomePageStateCopyWith<$Res> {
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

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ServerFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
