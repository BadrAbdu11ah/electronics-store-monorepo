// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ItemsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int categoryId, List<CategoriesModel> categories)
    started,
    required TResult Function(int categoryId) loadItems,
    required TResult Function(int itemsId) addFavorite,
    required TResult Function(int itemsId) removeFavorite,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int categoryId, List<CategoriesModel> categories)?
    started,
    TResult? Function(int categoryId)? loadItems,
    TResult? Function(int itemsId)? addFavorite,
    TResult? Function(int itemsId)? removeFavorite,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int categoryId, List<CategoriesModel> categories)? started,
    TResult Function(int categoryId)? loadItems,
    TResult Function(int itemsId)? addFavorite,
    TResult Function(int itemsId)? removeFavorite,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadItems value) loadItems,
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadItems value)? loadItems,
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadItems value)? loadItems,
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsEventCopyWith<$Res> {
  factory $ItemsEventCopyWith(
    ItemsEvent value,
    $Res Function(ItemsEvent) then,
  ) = _$ItemsEventCopyWithImpl<$Res, ItemsEvent>;
}

/// @nodoc
class _$ItemsEventCopyWithImpl<$Res, $Val extends ItemsEvent>
    implements $ItemsEventCopyWith<$Res> {
  _$ItemsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
    _$StartedImpl value,
    $Res Function(_$StartedImpl) then,
  ) = __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int categoryId, List<CategoriesModel> categories});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ItemsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? categoryId = null, Object? categories = null}) {
    return _then(
      _$StartedImpl(
        categoryId: null == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as int,
        categories: null == categories
            ? _value._categories
            : categories // ignore: cast_nullable_to_non_nullable
                  as List<CategoriesModel>,
      ),
    );
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl({
    required this.categoryId,
    required final List<CategoriesModel> categories,
  }) : _categories = categories;

  @override
  final int categoryId;
  final List<CategoriesModel> _categories;
  @override
  List<CategoriesModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'ItemsEvent.started(categoryId: $categoryId, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    categoryId,
    const DeepCollectionEquality().hash(_categories),
  );

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int categoryId, List<CategoriesModel> categories)
    started,
    required TResult Function(int categoryId) loadItems,
    required TResult Function(int itemsId) addFavorite,
    required TResult Function(int itemsId) removeFavorite,
  }) {
    return started(categoryId, categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int categoryId, List<CategoriesModel> categories)?
    started,
    TResult? Function(int categoryId)? loadItems,
    TResult? Function(int itemsId)? addFavorite,
    TResult? Function(int itemsId)? removeFavorite,
  }) {
    return started?.call(categoryId, categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int categoryId, List<CategoriesModel> categories)? started,
    TResult Function(int categoryId)? loadItems,
    TResult Function(int itemsId)? addFavorite,
    TResult Function(int itemsId)? removeFavorite,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(categoryId, categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadItems value) loadItems,
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadItems value)? loadItems,
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadItems value)? loadItems,
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ItemsEvent {
  const factory _Started({
    required final int categoryId,
    required final List<CategoriesModel> categories,
  }) = _$StartedImpl;

  int get categoryId;
  List<CategoriesModel> get categories;

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadItemsImplCopyWith<$Res> {
  factory _$$LoadItemsImplCopyWith(
    _$LoadItemsImpl value,
    $Res Function(_$LoadItemsImpl) then,
  ) = __$$LoadItemsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int categoryId});
}

/// @nodoc
class __$$LoadItemsImplCopyWithImpl<$Res>
    extends _$ItemsEventCopyWithImpl<$Res, _$LoadItemsImpl>
    implements _$$LoadItemsImplCopyWith<$Res> {
  __$$LoadItemsImplCopyWithImpl(
    _$LoadItemsImpl _value,
    $Res Function(_$LoadItemsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? categoryId = null}) {
    return _then(
      _$LoadItemsImpl(
        categoryId: null == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$LoadItemsImpl implements _LoadItems {
  const _$LoadItemsImpl({required this.categoryId});

  @override
  final int categoryId;

  @override
  String toString() {
    return 'ItemsEvent.loadItems(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadItemsImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadItemsImplCopyWith<_$LoadItemsImpl> get copyWith =>
      __$$LoadItemsImplCopyWithImpl<_$LoadItemsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int categoryId, List<CategoriesModel> categories)
    started,
    required TResult Function(int categoryId) loadItems,
    required TResult Function(int itemsId) addFavorite,
    required TResult Function(int itemsId) removeFavorite,
  }) {
    return loadItems(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int categoryId, List<CategoriesModel> categories)?
    started,
    TResult? Function(int categoryId)? loadItems,
    TResult? Function(int itemsId)? addFavorite,
    TResult? Function(int itemsId)? removeFavorite,
  }) {
    return loadItems?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int categoryId, List<CategoriesModel> categories)? started,
    TResult Function(int categoryId)? loadItems,
    TResult Function(int itemsId)? addFavorite,
    TResult Function(int itemsId)? removeFavorite,
    required TResult orElse(),
  }) {
    if (loadItems != null) {
      return loadItems(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadItems value) loadItems,
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
  }) {
    return loadItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadItems value)? loadItems,
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
  }) {
    return loadItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadItems value)? loadItems,
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) {
    if (loadItems != null) {
      return loadItems(this);
    }
    return orElse();
  }
}

abstract class _LoadItems implements ItemsEvent {
  const factory _LoadItems({required final int categoryId}) = _$LoadItemsImpl;

  int get categoryId;

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadItemsImplCopyWith<_$LoadItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFavoriteImplCopyWith<$Res> {
  factory _$$AddFavoriteImplCopyWith(
    _$AddFavoriteImpl value,
    $Res Function(_$AddFavoriteImpl) then,
  ) = __$$AddFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int itemsId});
}

/// @nodoc
class __$$AddFavoriteImplCopyWithImpl<$Res>
    extends _$ItemsEventCopyWithImpl<$Res, _$AddFavoriteImpl>
    implements _$$AddFavoriteImplCopyWith<$Res> {
  __$$AddFavoriteImplCopyWithImpl(
    _$AddFavoriteImpl _value,
    $Res Function(_$AddFavoriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? itemsId = null}) {
    return _then(
      _$AddFavoriteImpl(
        null == itemsId
            ? _value.itemsId
            : itemsId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$AddFavoriteImpl implements _AddFavorite {
  const _$AddFavoriteImpl(this.itemsId);

  @override
  final int itemsId;

  @override
  String toString() {
    return 'ItemsEvent.addFavorite(itemsId: $itemsId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavoriteImpl &&
            (identical(other.itemsId, itemsId) || other.itemsId == itemsId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemsId);

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavoriteImplCopyWith<_$AddFavoriteImpl> get copyWith =>
      __$$AddFavoriteImplCopyWithImpl<_$AddFavoriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int categoryId, List<CategoriesModel> categories)
    started,
    required TResult Function(int categoryId) loadItems,
    required TResult Function(int itemsId) addFavorite,
    required TResult Function(int itemsId) removeFavorite,
  }) {
    return addFavorite(itemsId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int categoryId, List<CategoriesModel> categories)?
    started,
    TResult? Function(int categoryId)? loadItems,
    TResult? Function(int itemsId)? addFavorite,
    TResult? Function(int itemsId)? removeFavorite,
  }) {
    return addFavorite?.call(itemsId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int categoryId, List<CategoriesModel> categories)? started,
    TResult Function(int categoryId)? loadItems,
    TResult Function(int itemsId)? addFavorite,
    TResult Function(int itemsId)? removeFavorite,
    required TResult orElse(),
  }) {
    if (addFavorite != null) {
      return addFavorite(itemsId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadItems value) loadItems,
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
  }) {
    return addFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadItems value)? loadItems,
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
  }) {
    return addFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadItems value)? loadItems,
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) {
    if (addFavorite != null) {
      return addFavorite(this);
    }
    return orElse();
  }
}

abstract class _AddFavorite implements ItemsEvent {
  const factory _AddFavorite(final int itemsId) = _$AddFavoriteImpl;

  int get itemsId;

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddFavoriteImplCopyWith<_$AddFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFavoriteImplCopyWith<$Res> {
  factory _$$RemoveFavoriteImplCopyWith(
    _$RemoveFavoriteImpl value,
    $Res Function(_$RemoveFavoriteImpl) then,
  ) = __$$RemoveFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int itemsId});
}

/// @nodoc
class __$$RemoveFavoriteImplCopyWithImpl<$Res>
    extends _$ItemsEventCopyWithImpl<$Res, _$RemoveFavoriteImpl>
    implements _$$RemoveFavoriteImplCopyWith<$Res> {
  __$$RemoveFavoriteImplCopyWithImpl(
    _$RemoveFavoriteImpl _value,
    $Res Function(_$RemoveFavoriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? itemsId = null}) {
    return _then(
      _$RemoveFavoriteImpl(
        null == itemsId
            ? _value.itemsId
            : itemsId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$RemoveFavoriteImpl implements _RemoveFavorite {
  const _$RemoveFavoriteImpl(this.itemsId);

  @override
  final int itemsId;

  @override
  String toString() {
    return 'ItemsEvent.removeFavorite(itemsId: $itemsId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFavoriteImpl &&
            (identical(other.itemsId, itemsId) || other.itemsId == itemsId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemsId);

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFavoriteImplCopyWith<_$RemoveFavoriteImpl> get copyWith =>
      __$$RemoveFavoriteImplCopyWithImpl<_$RemoveFavoriteImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int categoryId, List<CategoriesModel> categories)
    started,
    required TResult Function(int categoryId) loadItems,
    required TResult Function(int itemsId) addFavorite,
    required TResult Function(int itemsId) removeFavorite,
  }) {
    return removeFavorite(itemsId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int categoryId, List<CategoriesModel> categories)?
    started,
    TResult? Function(int categoryId)? loadItems,
    TResult? Function(int itemsId)? addFavorite,
    TResult? Function(int itemsId)? removeFavorite,
  }) {
    return removeFavorite?.call(itemsId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int categoryId, List<CategoriesModel> categories)? started,
    TResult Function(int categoryId)? loadItems,
    TResult Function(int itemsId)? addFavorite,
    TResult Function(int itemsId)? removeFavorite,
    required TResult orElse(),
  }) {
    if (removeFavorite != null) {
      return removeFavorite(itemsId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadItems value) loadItems,
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
  }) {
    return removeFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadItems value)? loadItems,
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
  }) {
    return removeFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadItems value)? loadItems,
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) {
    if (removeFavorite != null) {
      return removeFavorite(this);
    }
    return orElse();
  }
}

abstract class _RemoveFavorite implements ItemsEvent {
  const factory _RemoveFavorite(final int itemsId) = _$RemoveFavoriteImpl;

  int get itemsId;

  /// Create a copy of ItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveFavoriteImplCopyWith<_$RemoveFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemsStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String errorMessage) serverFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String errorMessage)? serverFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String errorMessage)? serverFailure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ServerFailure value) serverFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ServerFailure value)? serverFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ServerFailure value)? serverFailure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsStatusCopyWith<$Res> {
  factory $ItemsStatusCopyWith(
    ItemsStatus value,
    $Res Function(ItemsStatus) then,
  ) = _$ItemsStatusCopyWithImpl<$Res, ItemsStatus>;
}

/// @nodoc
class _$ItemsStatusCopyWithImpl<$Res, $Val extends ItemsStatus>
    implements $ItemsStatusCopyWith<$Res> {
  _$ItemsStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ItemsStatusCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ItemsStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String errorMessage) serverFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String errorMessage)? serverFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String errorMessage)? serverFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ServerFailure value) serverFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ServerFailure value)? serverFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ServerFailure value)? serverFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ItemsStatus {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ItemsStatusCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ItemsStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String errorMessage) serverFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String errorMessage)? serverFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String errorMessage)? serverFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ServerFailure value) serverFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ServerFailure value)? serverFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ServerFailure value)? serverFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ItemsStatus {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
    _$LoadedImpl value,
    $Res Function(_$LoadedImpl) then,
  ) = __$$LoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ItemsStatusCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
    _$LoadedImpl _value,
    $Res Function(_$LoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl();

  @override
  String toString() {
    return 'ItemsStatus.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String errorMessage) serverFailure,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String errorMessage)? serverFailure,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String errorMessage)? serverFailure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ServerFailure value) serverFailure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ServerFailure value)? serverFailure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ServerFailure value)? serverFailure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ItemsStatus {
  const factory _Loaded() = _$LoadedImpl;
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
    _$ServerFailureImpl value,
    $Res Function(_$ServerFailureImpl) then,
  ) = __$$ServerFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$ItemsStatusCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
    _$ServerFailureImpl _value,
    $Res Function(_$ServerFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemsStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? errorMessage = null}) {
    return _then(
      _$ServerFailureImpl(
        null == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ServerFailureImpl implements _ServerFailure {
  const _$ServerFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ItemsStatus.serverFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of ItemsStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String errorMessage) serverFailure,
  }) {
    return serverFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String errorMessage)? serverFailure,
  }) {
    return serverFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String errorMessage)? serverFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ServerFailure value) serverFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ServerFailure value)? serverFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ServerFailure value)? serverFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements ItemsStatus {
  const factory _ServerFailure(final String errorMessage) = _$ServerFailureImpl;

  String get errorMessage;

  /// Create a copy of ItemsStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoriteStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) success,
    required TResult Function(String errorMessage) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? success,
    TResult? Function(String errorMessage)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavInitial value) initial,
    required TResult Function(_FavSuccess value) success,
    required TResult Function(_FavFailure value) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavInitial value)? initial,
    TResult? Function(_FavSuccess value)? success,
    TResult? Function(_FavFailure value)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavInitial value)? initial,
    TResult Function(_FavSuccess value)? success,
    TResult Function(_FavFailure value)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStatusCopyWith<$Res> {
  factory $FavoriteStatusCopyWith(
    FavoriteStatus value,
    $Res Function(FavoriteStatus) then,
  ) = _$FavoriteStatusCopyWithImpl<$Res, FavoriteStatus>;
}

/// @nodoc
class _$FavoriteStatusCopyWithImpl<$Res, $Val extends FavoriteStatus>
    implements $FavoriteStatusCopyWith<$Res> {
  _$FavoriteStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FavInitialImplCopyWith<$Res> {
  factory _$$FavInitialImplCopyWith(
    _$FavInitialImpl value,
    $Res Function(_$FavInitialImpl) then,
  ) = __$$FavInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavInitialImplCopyWithImpl<$Res>
    extends _$FavoriteStatusCopyWithImpl<$Res, _$FavInitialImpl>
    implements _$$FavInitialImplCopyWith<$Res> {
  __$$FavInitialImplCopyWithImpl(
    _$FavInitialImpl _value,
    $Res Function(_$FavInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoriteStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FavInitialImpl implements _FavInitial {
  const _$FavInitialImpl();

  @override
  String toString() {
    return 'FavoriteStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) success,
    required TResult Function(String errorMessage) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? success,
    TResult? Function(String errorMessage)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavInitial value) initial,
    required TResult Function(_FavSuccess value) success,
    required TResult Function(_FavFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavInitial value)? initial,
    TResult? Function(_FavSuccess value)? success,
    TResult? Function(_FavFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavInitial value)? initial,
    TResult Function(_FavSuccess value)? success,
    TResult Function(_FavFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FavInitial implements FavoriteStatus {
  const factory _FavInitial() = _$FavInitialImpl;
}

/// @nodoc
abstract class _$$FavSuccessImplCopyWith<$Res> {
  factory _$$FavSuccessImplCopyWith(
    _$FavSuccessImpl value,
    $Res Function(_$FavSuccessImpl) then,
  ) = __$$FavSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FavSuccessImplCopyWithImpl<$Res>
    extends _$FavoriteStatusCopyWithImpl<$Res, _$FavSuccessImpl>
    implements _$$FavSuccessImplCopyWith<$Res> {
  __$$FavSuccessImplCopyWithImpl(
    _$FavSuccessImpl _value,
    $Res Function(_$FavSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoriteStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$FavSuccessImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$FavSuccessImpl implements _FavSuccess {
  const _$FavSuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FavoriteStatus.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of FavoriteStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavSuccessImplCopyWith<_$FavSuccessImpl> get copyWith =>
      __$$FavSuccessImplCopyWithImpl<_$FavSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) success,
    required TResult Function(String errorMessage) failure,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? success,
    TResult? Function(String errorMessage)? failure,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavInitial value) initial,
    required TResult Function(_FavSuccess value) success,
    required TResult Function(_FavFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavInitial value)? initial,
    TResult? Function(_FavSuccess value)? success,
    TResult? Function(_FavFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavInitial value)? initial,
    TResult Function(_FavSuccess value)? success,
    TResult Function(_FavFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _FavSuccess implements FavoriteStatus {
  const factory _FavSuccess(final String message) = _$FavSuccessImpl;

  String get message;

  /// Create a copy of FavoriteStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavSuccessImplCopyWith<_$FavSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavFailureImplCopyWith<$Res> {
  factory _$$FavFailureImplCopyWith(
    _$FavFailureImpl value,
    $Res Function(_$FavFailureImpl) then,
  ) = __$$FavFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FavFailureImplCopyWithImpl<$Res>
    extends _$FavoriteStatusCopyWithImpl<$Res, _$FavFailureImpl>
    implements _$$FavFailureImplCopyWith<$Res> {
  __$$FavFailureImplCopyWithImpl(
    _$FavFailureImpl _value,
    $Res Function(_$FavFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoriteStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? errorMessage = null}) {
    return _then(
      _$FavFailureImpl(
        null == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$FavFailureImpl implements _FavFailure {
  const _$FavFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'FavoriteStatus.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of FavoriteStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavFailureImplCopyWith<_$FavFailureImpl> get copyWith =>
      __$$FavFailureImplCopyWithImpl<_$FavFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) success,
    required TResult Function(String errorMessage) failure,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? success,
    TResult? Function(String errorMessage)? failure,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavInitial value) initial,
    required TResult Function(_FavSuccess value) success,
    required TResult Function(_FavFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavInitial value)? initial,
    TResult? Function(_FavSuccess value)? success,
    TResult? Function(_FavFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavInitial value)? initial,
    TResult Function(_FavSuccess value)? success,
    TResult Function(_FavFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FavFailure implements FavoriteStatus {
  const factory _FavFailure(final String errorMessage) = _$FavFailureImpl;

  String get errorMessage;

  /// Create a copy of FavoriteStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavFailureImplCopyWith<_$FavFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemsState {
  ItemsStatus get status => throw _privateConstructorUsedError;
  FavoriteStatus get favoriteStatus => throw _privateConstructorUsedError;
  List<ItemsModel> get items => throw _privateConstructorUsedError;
  List<CategoriesModel> get categories => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  Map<int, int> get isFavorite => throw _privateConstructorUsedError;
  String? get lang => throw _privateConstructorUsedError;

  /// Create a copy of ItemsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemsStateCopyWith<ItemsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsStateCopyWith<$Res> {
  factory $ItemsStateCopyWith(
    ItemsState value,
    $Res Function(ItemsState) then,
  ) = _$ItemsStateCopyWithImpl<$Res, ItemsState>;
  @useResult
  $Res call({
    ItemsStatus status,
    FavoriteStatus favoriteStatus,
    List<ItemsModel> items,
    List<CategoriesModel> categories,
    int categoryId,
    Map<int, int> isFavorite,
    String? lang,
  });

  $ItemsStatusCopyWith<$Res> get status;
  $FavoriteStatusCopyWith<$Res> get favoriteStatus;
}

/// @nodoc
class _$ItemsStateCopyWithImpl<$Res, $Val extends ItemsState>
    implements $ItemsStateCopyWith<$Res> {
  _$ItemsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? favoriteStatus = null,
    Object? items = null,
    Object? categories = null,
    Object? categoryId = null,
    Object? isFavorite = null,
    Object? lang = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as ItemsStatus,
            favoriteStatus: null == favoriteStatus
                ? _value.favoriteStatus
                : favoriteStatus // ignore: cast_nullable_to_non_nullable
                      as FavoriteStatus,
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<ItemsModel>,
            categories: null == categories
                ? _value.categories
                : categories // ignore: cast_nullable_to_non_nullable
                      as List<CategoriesModel>,
            categoryId: null == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                      as int,
            isFavorite: null == isFavorite
                ? _value.isFavorite
                : isFavorite // ignore: cast_nullable_to_non_nullable
                      as Map<int, int>,
            lang: freezed == lang
                ? _value.lang
                : lang // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of ItemsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemsStatusCopyWith<$Res> get status {
    return $ItemsStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of ItemsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FavoriteStatusCopyWith<$Res> get favoriteStatus {
    return $FavoriteStatusCopyWith<$Res>(_value.favoriteStatus, (value) {
      return _then(_value.copyWith(favoriteStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemsStateImplCopyWith<$Res>
    implements $ItemsStateCopyWith<$Res> {
  factory _$$ItemsStateImplCopyWith(
    _$ItemsStateImpl value,
    $Res Function(_$ItemsStateImpl) then,
  ) = __$$ItemsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ItemsStatus status,
    FavoriteStatus favoriteStatus,
    List<ItemsModel> items,
    List<CategoriesModel> categories,
    int categoryId,
    Map<int, int> isFavorite,
    String? lang,
  });

  @override
  $ItemsStatusCopyWith<$Res> get status;
  @override
  $FavoriteStatusCopyWith<$Res> get favoriteStatus;
}

/// @nodoc
class __$$ItemsStateImplCopyWithImpl<$Res>
    extends _$ItemsStateCopyWithImpl<$Res, _$ItemsStateImpl>
    implements _$$ItemsStateImplCopyWith<$Res> {
  __$$ItemsStateImplCopyWithImpl(
    _$ItemsStateImpl _value,
    $Res Function(_$ItemsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? favoriteStatus = null,
    Object? items = null,
    Object? categories = null,
    Object? categoryId = null,
    Object? isFavorite = null,
    Object? lang = freezed,
  }) {
    return _then(
      _$ItemsStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ItemsStatus,
        favoriteStatus: null == favoriteStatus
            ? _value.favoriteStatus
            : favoriteStatus // ignore: cast_nullable_to_non_nullable
                  as FavoriteStatus,
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<ItemsModel>,
        categories: null == categories
            ? _value._categories
            : categories // ignore: cast_nullable_to_non_nullable
                  as List<CategoriesModel>,
        categoryId: null == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as int,
        isFavorite: null == isFavorite
            ? _value._isFavorite
            : isFavorite // ignore: cast_nullable_to_non_nullable
                  as Map<int, int>,
        lang: freezed == lang
            ? _value.lang
            : lang // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$ItemsStateImpl implements _ItemsState {
  const _$ItemsStateImpl({
    this.status = const ItemsStatus.initial(),
    this.favoriteStatus = const FavoriteStatus.initial(),
    final List<ItemsModel> items = const [],
    final List<CategoriesModel> categories = const [],
    this.categoryId = 0,
    final Map<int, int> isFavorite = const {},
    this.lang,
  }) : _items = items,
       _categories = categories,
       _isFavorite = isFavorite;

  @override
  @JsonKey()
  final ItemsStatus status;
  @override
  @JsonKey()
  final FavoriteStatus favoriteStatus;
  final List<ItemsModel> _items;
  @override
  @JsonKey()
  List<ItemsModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<CategoriesModel> _categories;
  @override
  @JsonKey()
  List<CategoriesModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final int categoryId;
  final Map<int, int> _isFavorite;
  @override
  @JsonKey()
  Map<int, int> get isFavorite {
    if (_isFavorite is EqualUnmodifiableMapView) return _isFavorite;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_isFavorite);
  }

  @override
  final String? lang;

  @override
  String toString() {
    return 'ItemsState(status: $status, favoriteStatus: $favoriteStatus, items: $items, categories: $categories, categoryId: $categoryId, isFavorite: $isFavorite, lang: $lang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.favoriteStatus, favoriteStatus) ||
                other.favoriteStatus == favoriteStatus) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            const DeepCollectionEquality().equals(
              other._isFavorite,
              _isFavorite,
            ) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    favoriteStatus,
    const DeepCollectionEquality().hash(_items),
    const DeepCollectionEquality().hash(_categories),
    categoryId,
    const DeepCollectionEquality().hash(_isFavorite),
    lang,
  );

  /// Create a copy of ItemsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsStateImplCopyWith<_$ItemsStateImpl> get copyWith =>
      __$$ItemsStateImplCopyWithImpl<_$ItemsStateImpl>(this, _$identity);
}

abstract class _ItemsState implements ItemsState {
  const factory _ItemsState({
    final ItemsStatus status,
    final FavoriteStatus favoriteStatus,
    final List<ItemsModel> items,
    final List<CategoriesModel> categories,
    final int categoryId,
    final Map<int, int> isFavorite,
    final String? lang,
  }) = _$ItemsStateImpl;

  @override
  ItemsStatus get status;
  @override
  FavoriteStatus get favoriteStatus;
  @override
  List<ItemsModel> get items;
  @override
  List<CategoriesModel> get categories;
  @override
  int get categoryId;
  @override
  Map<int, int> get isFavorite;
  @override
  String? get lang;

  /// Create a copy of ItemsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemsStateImplCopyWith<_$ItemsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
