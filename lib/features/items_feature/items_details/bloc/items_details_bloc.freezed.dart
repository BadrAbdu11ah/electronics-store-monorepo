// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ItemsDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemsModel itemsModel) started,
    required TResult Function(int itemsId) loadCountCart,
    required TResult Function(int itemsId) addCart,
    required TResult Function(int itemsId) removeCart,
    required TResult Function(int index) selectedColor,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemsModel itemsModel)? started,
    TResult? Function(int itemsId)? loadCountCart,
    TResult? Function(int itemsId)? addCart,
    TResult? Function(int itemsId)? removeCart,
    TResult? Function(int index)? selectedColor,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemsModel itemsModel)? started,
    TResult Function(int itemsId)? loadCountCart,
    TResult Function(int itemsId)? addCart,
    TResult Function(int itemsId)? removeCart,
    TResult Function(int index)? selectedColor,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadCountCart value) loadCountCart,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_SelelctedColor value) selectedColor,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCountCart value)? loadCountCart,
    TResult? Function(_AddCart value)? addCart,
    TResult? Function(_RemoveCart value)? removeCart,
    TResult? Function(_SelelctedColor value)? selectedColor,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCountCart value)? loadCountCart,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_SelelctedColor value)? selectedColor,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsDetailsEventCopyWith<$Res> {
  factory $ItemsDetailsEventCopyWith(
    ItemsDetailsEvent value,
    $Res Function(ItemsDetailsEvent) then,
  ) = _$ItemsDetailsEventCopyWithImpl<$Res, ItemsDetailsEvent>;
}

/// @nodoc
class _$ItemsDetailsEventCopyWithImpl<$Res, $Val extends ItemsDetailsEvent>
    implements $ItemsDetailsEventCopyWith<$Res> {
  _$ItemsDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemsDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
    _$StartedImpl value,
    $Res Function(_$StartedImpl) then,
  ) = __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ItemsModel itemsModel});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ItemsDetailsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemsDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? itemsModel = null}) {
    return _then(
      _$StartedImpl(
        null == itemsModel
            ? _value.itemsModel
            : itemsModel // ignore: cast_nullable_to_non_nullable
                  as ItemsModel,
      ),
    );
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.itemsModel);

  @override
  final ItemsModel itemsModel;

  @override
  String toString() {
    return 'ItemsDetailsEvent.started(itemsModel: $itemsModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.itemsModel, itemsModel) ||
                other.itemsModel == itemsModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemsModel);

  /// Create a copy of ItemsDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemsModel itemsModel) started,
    required TResult Function(int itemsId) loadCountCart,
    required TResult Function(int itemsId) addCart,
    required TResult Function(int itemsId) removeCart,
    required TResult Function(int index) selectedColor,
  }) {
    return started(itemsModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemsModel itemsModel)? started,
    TResult? Function(int itemsId)? loadCountCart,
    TResult? Function(int itemsId)? addCart,
    TResult? Function(int itemsId)? removeCart,
    TResult? Function(int index)? selectedColor,
  }) {
    return started?.call(itemsModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemsModel itemsModel)? started,
    TResult Function(int itemsId)? loadCountCart,
    TResult Function(int itemsId)? addCart,
    TResult Function(int itemsId)? removeCart,
    TResult Function(int index)? selectedColor,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(itemsModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadCountCart value) loadCountCart,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_SelelctedColor value) selectedColor,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCountCart value)? loadCountCart,
    TResult? Function(_AddCart value)? addCart,
    TResult? Function(_RemoveCart value)? removeCart,
    TResult? Function(_SelelctedColor value)? selectedColor,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCountCart value)? loadCountCart,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_SelelctedColor value)? selectedColor,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ItemsDetailsEvent {
  const factory _Started(final ItemsModel itemsModel) = _$StartedImpl;

  ItemsModel get itemsModel;

  /// Create a copy of ItemsDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadCountCartImplCopyWith<$Res> {
  factory _$$LoadCountCartImplCopyWith(
    _$LoadCountCartImpl value,
    $Res Function(_$LoadCountCartImpl) then,
  ) = __$$LoadCountCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int itemsId});
}

/// @nodoc
class __$$LoadCountCartImplCopyWithImpl<$Res>
    extends _$ItemsDetailsEventCopyWithImpl<$Res, _$LoadCountCartImpl>
    implements _$$LoadCountCartImplCopyWith<$Res> {
  __$$LoadCountCartImplCopyWithImpl(
    _$LoadCountCartImpl _value,
    $Res Function(_$LoadCountCartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemsDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? itemsId = null}) {
    return _then(
      _$LoadCountCartImpl(
        null == itemsId
            ? _value.itemsId
            : itemsId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$LoadCountCartImpl implements _LoadCountCart {
  const _$LoadCountCartImpl(this.itemsId);

  @override
  final int itemsId;

  @override
  String toString() {
    return 'ItemsDetailsEvent.loadCountCart(itemsId: $itemsId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCountCartImpl &&
            (identical(other.itemsId, itemsId) || other.itemsId == itemsId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemsId);

  /// Create a copy of ItemsDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCountCartImplCopyWith<_$LoadCountCartImpl> get copyWith =>
      __$$LoadCountCartImplCopyWithImpl<_$LoadCountCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemsModel itemsModel) started,
    required TResult Function(int itemsId) loadCountCart,
    required TResult Function(int itemsId) addCart,
    required TResult Function(int itemsId) removeCart,
    required TResult Function(int index) selectedColor,
  }) {
    return loadCountCart(itemsId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemsModel itemsModel)? started,
    TResult? Function(int itemsId)? loadCountCart,
    TResult? Function(int itemsId)? addCart,
    TResult? Function(int itemsId)? removeCart,
    TResult? Function(int index)? selectedColor,
  }) {
    return loadCountCart?.call(itemsId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemsModel itemsModel)? started,
    TResult Function(int itemsId)? loadCountCart,
    TResult Function(int itemsId)? addCart,
    TResult Function(int itemsId)? removeCart,
    TResult Function(int index)? selectedColor,
    required TResult orElse(),
  }) {
    if (loadCountCart != null) {
      return loadCountCart(itemsId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadCountCart value) loadCountCart,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_SelelctedColor value) selectedColor,
  }) {
    return loadCountCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCountCart value)? loadCountCart,
    TResult? Function(_AddCart value)? addCart,
    TResult? Function(_RemoveCart value)? removeCart,
    TResult? Function(_SelelctedColor value)? selectedColor,
  }) {
    return loadCountCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCountCart value)? loadCountCart,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_SelelctedColor value)? selectedColor,
    required TResult orElse(),
  }) {
    if (loadCountCart != null) {
      return loadCountCart(this);
    }
    return orElse();
  }
}

abstract class _LoadCountCart implements ItemsDetailsEvent {
  const factory _LoadCountCart(final int itemsId) = _$LoadCountCartImpl;

  int get itemsId;

  /// Create a copy of ItemsDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadCountCartImplCopyWith<_$LoadCountCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCartImplCopyWith<$Res> {
  factory _$$AddCartImplCopyWith(
    _$AddCartImpl value,
    $Res Function(_$AddCartImpl) then,
  ) = __$$AddCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int itemsId});
}

/// @nodoc
class __$$AddCartImplCopyWithImpl<$Res>
    extends _$ItemsDetailsEventCopyWithImpl<$Res, _$AddCartImpl>
    implements _$$AddCartImplCopyWith<$Res> {
  __$$AddCartImplCopyWithImpl(
    _$AddCartImpl _value,
    $Res Function(_$AddCartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemsDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? itemsId = null}) {
    return _then(
      _$AddCartImpl(
        null == itemsId
            ? _value.itemsId
            : itemsId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$AddCartImpl implements _AddCart {
  const _$AddCartImpl(this.itemsId);

  @override
  final int itemsId;

  @override
  String toString() {
    return 'ItemsDetailsEvent.addCart(itemsId: $itemsId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCartImpl &&
            (identical(other.itemsId, itemsId) || other.itemsId == itemsId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemsId);

  /// Create a copy of ItemsDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCartImplCopyWith<_$AddCartImpl> get copyWith =>
      __$$AddCartImplCopyWithImpl<_$AddCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemsModel itemsModel) started,
    required TResult Function(int itemsId) loadCountCart,
    required TResult Function(int itemsId) addCart,
    required TResult Function(int itemsId) removeCart,
    required TResult Function(int index) selectedColor,
  }) {
    return addCart(itemsId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemsModel itemsModel)? started,
    TResult? Function(int itemsId)? loadCountCart,
    TResult? Function(int itemsId)? addCart,
    TResult? Function(int itemsId)? removeCart,
    TResult? Function(int index)? selectedColor,
  }) {
    return addCart?.call(itemsId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemsModel itemsModel)? started,
    TResult Function(int itemsId)? loadCountCart,
    TResult Function(int itemsId)? addCart,
    TResult Function(int itemsId)? removeCart,
    TResult Function(int index)? selectedColor,
    required TResult orElse(),
  }) {
    if (addCart != null) {
      return addCart(itemsId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadCountCart value) loadCountCart,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_SelelctedColor value) selectedColor,
  }) {
    return addCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCountCart value)? loadCountCart,
    TResult? Function(_AddCart value)? addCart,
    TResult? Function(_RemoveCart value)? removeCart,
    TResult? Function(_SelelctedColor value)? selectedColor,
  }) {
    return addCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCountCart value)? loadCountCart,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_SelelctedColor value)? selectedColor,
    required TResult orElse(),
  }) {
    if (addCart != null) {
      return addCart(this);
    }
    return orElse();
  }
}

abstract class _AddCart implements ItemsDetailsEvent {
  const factory _AddCart(final int itemsId) = _$AddCartImpl;

  int get itemsId;

  /// Create a copy of ItemsDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCartImplCopyWith<_$AddCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveCartImplCopyWith<$Res> {
  factory _$$RemoveCartImplCopyWith(
    _$RemoveCartImpl value,
    $Res Function(_$RemoveCartImpl) then,
  ) = __$$RemoveCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int itemsId});
}

/// @nodoc
class __$$RemoveCartImplCopyWithImpl<$Res>
    extends _$ItemsDetailsEventCopyWithImpl<$Res, _$RemoveCartImpl>
    implements _$$RemoveCartImplCopyWith<$Res> {
  __$$RemoveCartImplCopyWithImpl(
    _$RemoveCartImpl _value,
    $Res Function(_$RemoveCartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemsDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? itemsId = null}) {
    return _then(
      _$RemoveCartImpl(
        null == itemsId
            ? _value.itemsId
            : itemsId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$RemoveCartImpl implements _RemoveCart {
  const _$RemoveCartImpl(this.itemsId);

  @override
  final int itemsId;

  @override
  String toString() {
    return 'ItemsDetailsEvent.removeCart(itemsId: $itemsId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCartImpl &&
            (identical(other.itemsId, itemsId) || other.itemsId == itemsId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemsId);

  /// Create a copy of ItemsDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCartImplCopyWith<_$RemoveCartImpl> get copyWith =>
      __$$RemoveCartImplCopyWithImpl<_$RemoveCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemsModel itemsModel) started,
    required TResult Function(int itemsId) loadCountCart,
    required TResult Function(int itemsId) addCart,
    required TResult Function(int itemsId) removeCart,
    required TResult Function(int index) selectedColor,
  }) {
    return removeCart(itemsId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemsModel itemsModel)? started,
    TResult? Function(int itemsId)? loadCountCart,
    TResult? Function(int itemsId)? addCart,
    TResult? Function(int itemsId)? removeCart,
    TResult? Function(int index)? selectedColor,
  }) {
    return removeCart?.call(itemsId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemsModel itemsModel)? started,
    TResult Function(int itemsId)? loadCountCart,
    TResult Function(int itemsId)? addCart,
    TResult Function(int itemsId)? removeCart,
    TResult Function(int index)? selectedColor,
    required TResult orElse(),
  }) {
    if (removeCart != null) {
      return removeCart(itemsId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadCountCart value) loadCountCart,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_SelelctedColor value) selectedColor,
  }) {
    return removeCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCountCart value)? loadCountCart,
    TResult? Function(_AddCart value)? addCart,
    TResult? Function(_RemoveCart value)? removeCart,
    TResult? Function(_SelelctedColor value)? selectedColor,
  }) {
    return removeCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCountCart value)? loadCountCart,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_SelelctedColor value)? selectedColor,
    required TResult orElse(),
  }) {
    if (removeCart != null) {
      return removeCart(this);
    }
    return orElse();
  }
}

abstract class _RemoveCart implements ItemsDetailsEvent {
  const factory _RemoveCart(final int itemsId) = _$RemoveCartImpl;

  int get itemsId;

  /// Create a copy of ItemsDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveCartImplCopyWith<_$RemoveCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelelctedColorImplCopyWith<$Res> {
  factory _$$SelelctedColorImplCopyWith(
    _$SelelctedColorImpl value,
    $Res Function(_$SelelctedColorImpl) then,
  ) = __$$SelelctedColorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SelelctedColorImplCopyWithImpl<$Res>
    extends _$ItemsDetailsEventCopyWithImpl<$Res, _$SelelctedColorImpl>
    implements _$$SelelctedColorImplCopyWith<$Res> {
  __$$SelelctedColorImplCopyWithImpl(
    _$SelelctedColorImpl _value,
    $Res Function(_$SelelctedColorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemsDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$SelelctedColorImpl(
        null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$SelelctedColorImpl implements _SelelctedColor {
  const _$SelelctedColorImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'ItemsDetailsEvent.selectedColor(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelelctedColorImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of ItemsDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelelctedColorImplCopyWith<_$SelelctedColorImpl> get copyWith =>
      __$$SelelctedColorImplCopyWithImpl<_$SelelctedColorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemsModel itemsModel) started,
    required TResult Function(int itemsId) loadCountCart,
    required TResult Function(int itemsId) addCart,
    required TResult Function(int itemsId) removeCart,
    required TResult Function(int index) selectedColor,
  }) {
    return selectedColor(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemsModel itemsModel)? started,
    TResult? Function(int itemsId)? loadCountCart,
    TResult? Function(int itemsId)? addCart,
    TResult? Function(int itemsId)? removeCart,
    TResult? Function(int index)? selectedColor,
  }) {
    return selectedColor?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemsModel itemsModel)? started,
    TResult Function(int itemsId)? loadCountCart,
    TResult Function(int itemsId)? addCart,
    TResult Function(int itemsId)? removeCart,
    TResult Function(int index)? selectedColor,
    required TResult orElse(),
  }) {
    if (selectedColor != null) {
      return selectedColor(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadCountCart value) loadCountCart,
    required TResult Function(_AddCart value) addCart,
    required TResult Function(_RemoveCart value) removeCart,
    required TResult Function(_SelelctedColor value) selectedColor,
  }) {
    return selectedColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCountCart value)? loadCountCart,
    TResult? Function(_AddCart value)? addCart,
    TResult? Function(_RemoveCart value)? removeCart,
    TResult? Function(_SelelctedColor value)? selectedColor,
  }) {
    return selectedColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCountCart value)? loadCountCart,
    TResult Function(_AddCart value)? addCart,
    TResult Function(_RemoveCart value)? removeCart,
    TResult Function(_SelelctedColor value)? selectedColor,
    required TResult orElse(),
  }) {
    if (selectedColor != null) {
      return selectedColor(this);
    }
    return orElse();
  }
}

abstract class _SelelctedColor implements ItemsDetailsEvent {
  const factory _SelelctedColor(final int index) = _$SelelctedColorImpl;

  int get index;

  /// Create a copy of ItemsDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelelctedColorImplCopyWith<_$SelelctedColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemsDetailsStatus {
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
abstract class $ItemsDetailsStatusCopyWith<$Res> {
  factory $ItemsDetailsStatusCopyWith(
    ItemsDetailsStatus value,
    $Res Function(ItemsDetailsStatus) then,
  ) = _$ItemsDetailsStatusCopyWithImpl<$Res, ItemsDetailsStatus>;
}

/// @nodoc
class _$ItemsDetailsStatusCopyWithImpl<$Res, $Val extends ItemsDetailsStatus>
    implements $ItemsDetailsStatusCopyWith<$Res> {
  _$ItemsDetailsStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemsDetailsStatus
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
    extends _$ItemsDetailsStatusCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemsDetailsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ItemsDetailsStatus.initial()';
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

abstract class _Initial implements ItemsDetailsStatus {
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
    extends _$ItemsDetailsStatusCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemsDetailsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ItemsDetailsStatus.loading()';
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

abstract class _Loading implements ItemsDetailsStatus {
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
    extends _$ItemsDetailsStatusCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
    _$LoadedImpl _value,
    $Res Function(_$LoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemsDetailsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl();

  @override
  String toString() {
    return 'ItemsDetailsStatus.loaded()';
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

abstract class _Loaded implements ItemsDetailsStatus {
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
    extends _$ItemsDetailsStatusCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
    _$ServerFailureImpl _value,
    $Res Function(_$ServerFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemsDetailsStatus
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
    return 'ItemsDetailsStatus.serverFailure(errorMessage: $errorMessage)';
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

  /// Create a copy of ItemsDetailsStatus
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

abstract class _ServerFailure implements ItemsDetailsStatus {
  const factory _ServerFailure(final String errorMessage) = _$ServerFailureImpl;

  String get errorMessage;

  /// Create a copy of ItemsDetailsStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String errorMessage) failure,
    required TResult Function(String message) success,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(String message)? success,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String errorMessage)? failure,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartInitial value) initial,
    required TResult Function(_failure value) failure,
    required TResult Function(_Success value) success,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_failure value)? failure,
    TResult? Function(_Success value)? success,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStatusCopyWith<$Res> {
  factory $CartStatusCopyWith(
    CartStatus value,
    $Res Function(CartStatus) then,
  ) = _$CartStatusCopyWithImpl<$Res, CartStatus>;
}

/// @nodoc
class _$CartStatusCopyWithImpl<$Res, $Val extends CartStatus>
    implements $CartStatusCopyWith<$Res> {
  _$CartStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CartInitialImplCopyWith<$Res> {
  factory _$$CartInitialImplCopyWith(
    _$CartInitialImpl value,
    $Res Function(_$CartInitialImpl) then,
  ) = __$$CartInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartInitialImplCopyWithImpl<$Res>
    extends _$CartStatusCopyWithImpl<$Res, _$CartInitialImpl>
    implements _$$CartInitialImplCopyWith<$Res> {
  __$$CartInitialImplCopyWithImpl(
    _$CartInitialImpl _value,
    $Res Function(_$CartInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CartInitialImpl implements _CartInitial {
  const _$CartInitialImpl();

  @override
  String toString() {
    return 'CartStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String errorMessage) failure,
    required TResult Function(String message) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(String message)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String errorMessage)? failure,
    TResult Function(String message)? success,
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
    required TResult Function(_CartInitial value) initial,
    required TResult Function(_failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_failure value)? failure,
    TResult? Function(_Success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CartInitial implements CartStatus {
  const factory _CartInitial() = _$CartInitialImpl;
}

/// @nodoc
abstract class _$$failureImplCopyWith<$Res> {
  factory _$$failureImplCopyWith(
    _$failureImpl value,
    $Res Function(_$failureImpl) then,
  ) = __$$failureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$failureImplCopyWithImpl<$Res>
    extends _$CartStatusCopyWithImpl<$Res, _$failureImpl>
    implements _$$failureImplCopyWith<$Res> {
  __$$failureImplCopyWithImpl(
    _$failureImpl _value,
    $Res Function(_$failureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? errorMessage = null}) {
    return _then(
      _$failureImpl(
        null == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$failureImpl implements _failure {
  const _$failureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CartStatus.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$failureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of CartStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$failureImplCopyWith<_$failureImpl> get copyWith =>
      __$$failureImplCopyWithImpl<_$failureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String errorMessage) failure,
    required TResult Function(String message) success,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(String message)? success,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String errorMessage)? failure,
    TResult Function(String message)? success,
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
    required TResult Function(_CartInitial value) initial,
    required TResult Function(_failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_failure value)? failure,
    TResult? Function(_Success value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _failure implements CartStatus {
  const factory _failure(final String errorMessage) = _$failureImpl;

  String get errorMessage;

  /// Create a copy of CartStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$failureImplCopyWith<_$failureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CartStatusCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$SuccessImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CartStatus.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CartStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String errorMessage) failure,
    required TResult Function(String message) success,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(String message)? success,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String errorMessage)? failure,
    TResult Function(String message)? success,
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
    required TResult Function(_CartInitial value) initial,
    required TResult Function(_failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(_failure value)? failure,
    TResult? Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(_failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CartStatus {
  const factory _Success(final String message) = _$SuccessImpl;

  String get message;

  /// Create a copy of CartStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemsDetailsState {
  ItemsDetailsStatus get status => throw _privateConstructorUsedError;
  CartStatus get cartStatus => throw _privateConstructorUsedError;
  ItemsModel? get itemsModel => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<String> get selectedColors => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get subItems => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;

  /// Create a copy of ItemsDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemsDetailsStateCopyWith<ItemsDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsDetailsStateCopyWith<$Res> {
  factory $ItemsDetailsStateCopyWith(
    ItemsDetailsState value,
    $Res Function(ItemsDetailsState) then,
  ) = _$ItemsDetailsStateCopyWithImpl<$Res, ItemsDetailsState>;
  @useResult
  $Res call({
    ItemsDetailsStatus status,
    CartStatus cartStatus,
    ItemsModel? itemsModel,
    int count,
    List<String> selectedColors,
    List<Map<String, dynamic>> subItems,
    bool isUpdating,
  });

  $ItemsDetailsStatusCopyWith<$Res> get status;
  $CartStatusCopyWith<$Res> get cartStatus;
}

/// @nodoc
class _$ItemsDetailsStateCopyWithImpl<$Res, $Val extends ItemsDetailsState>
    implements $ItemsDetailsStateCopyWith<$Res> {
  _$ItemsDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemsDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? cartStatus = null,
    Object? itemsModel = freezed,
    Object? count = null,
    Object? selectedColors = null,
    Object? subItems = null,
    Object? isUpdating = null,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as ItemsDetailsStatus,
            cartStatus: null == cartStatus
                ? _value.cartStatus
                : cartStatus // ignore: cast_nullable_to_non_nullable
                      as CartStatus,
            itemsModel: freezed == itemsModel
                ? _value.itemsModel
                : itemsModel // ignore: cast_nullable_to_non_nullable
                      as ItemsModel?,
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
            selectedColors: null == selectedColors
                ? _value.selectedColors
                : selectedColors // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            subItems: null == subItems
                ? _value.subItems
                : subItems // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>,
            isUpdating: null == isUpdating
                ? _value.isUpdating
                : isUpdating // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of ItemsDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemsDetailsStatusCopyWith<$Res> get status {
    return $ItemsDetailsStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of ItemsDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartStatusCopyWith<$Res> get cartStatus {
    return $CartStatusCopyWith<$Res>(_value.cartStatus, (value) {
      return _then(_value.copyWith(cartStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemsDetailsStateImplCopyWith<$Res>
    implements $ItemsDetailsStateCopyWith<$Res> {
  factory _$$ItemsDetailsStateImplCopyWith(
    _$ItemsDetailsStateImpl value,
    $Res Function(_$ItemsDetailsStateImpl) then,
  ) = __$$ItemsDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ItemsDetailsStatus status,
    CartStatus cartStatus,
    ItemsModel? itemsModel,
    int count,
    List<String> selectedColors,
    List<Map<String, dynamic>> subItems,
    bool isUpdating,
  });

  @override
  $ItemsDetailsStatusCopyWith<$Res> get status;
  @override
  $CartStatusCopyWith<$Res> get cartStatus;
}

/// @nodoc
class __$$ItemsDetailsStateImplCopyWithImpl<$Res>
    extends _$ItemsDetailsStateCopyWithImpl<$Res, _$ItemsDetailsStateImpl>
    implements _$$ItemsDetailsStateImplCopyWith<$Res> {
  __$$ItemsDetailsStateImplCopyWithImpl(
    _$ItemsDetailsStateImpl _value,
    $Res Function(_$ItemsDetailsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemsDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? cartStatus = null,
    Object? itemsModel = freezed,
    Object? count = null,
    Object? selectedColors = null,
    Object? subItems = null,
    Object? isUpdating = null,
  }) {
    return _then(
      _$ItemsDetailsStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ItemsDetailsStatus,
        cartStatus: null == cartStatus
            ? _value.cartStatus
            : cartStatus // ignore: cast_nullable_to_non_nullable
                  as CartStatus,
        itemsModel: freezed == itemsModel
            ? _value.itemsModel
            : itemsModel // ignore: cast_nullable_to_non_nullable
                  as ItemsModel?,
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
        selectedColors: null == selectedColors
            ? _value._selectedColors
            : selectedColors // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        subItems: null == subItems
            ? _value._subItems
            : subItems // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>,
        isUpdating: null == isUpdating
            ? _value.isUpdating
            : isUpdating // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ItemsDetailsStateImpl implements _ItemsDetailsState {
  const _$ItemsDetailsStateImpl({
    this.status = const ItemsDetailsStatus.initial(),
    this.cartStatus = const CartStatus.initial(),
    this.itemsModel,
    this.count = 0,
    final List<String> selectedColors = const [],
    final List<Map<String, dynamic>> subItems = const [
      {"id": "1", "name": "red", "active": false},
      {"id": "2", "name": "black", "active": false},
      {"id": "3", "name": "grey", "active": false},
    ],
    this.isUpdating = false,
  }) : _selectedColors = selectedColors,
       _subItems = subItems;

  @override
  @JsonKey()
  final ItemsDetailsStatus status;
  @override
  @JsonKey()
  final CartStatus cartStatus;
  @override
  final ItemsModel? itemsModel;
  @override
  @JsonKey()
  final int count;
  final List<String> _selectedColors;
  @override
  @JsonKey()
  List<String> get selectedColors {
    if (_selectedColors is EqualUnmodifiableListView) return _selectedColors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedColors);
  }

  final List<Map<String, dynamic>> _subItems;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get subItems {
    if (_subItems is EqualUnmodifiableListView) return _subItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subItems);
  }

  @override
  @JsonKey()
  final bool isUpdating;

  @override
  String toString() {
    return 'ItemsDetailsState(status: $status, cartStatus: $cartStatus, itemsModel: $itemsModel, count: $count, selectedColors: $selectedColors, subItems: $subItems, isUpdating: $isUpdating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsDetailsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cartStatus, cartStatus) ||
                other.cartStatus == cartStatus) &&
            (identical(other.itemsModel, itemsModel) ||
                other.itemsModel == itemsModel) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(
              other._selectedColors,
              _selectedColors,
            ) &&
            const DeepCollectionEquality().equals(other._subItems, _subItems) &&
            (identical(other.isUpdating, isUpdating) ||
                other.isUpdating == isUpdating));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    cartStatus,
    itemsModel,
    count,
    const DeepCollectionEquality().hash(_selectedColors),
    const DeepCollectionEquality().hash(_subItems),
    isUpdating,
  );

  /// Create a copy of ItemsDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsDetailsStateImplCopyWith<_$ItemsDetailsStateImpl> get copyWith =>
      __$$ItemsDetailsStateImplCopyWithImpl<_$ItemsDetailsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ItemsDetailsState implements ItemsDetailsState {
  const factory _ItemsDetailsState({
    final ItemsDetailsStatus status,
    final CartStatus cartStatus,
    final ItemsModel? itemsModel,
    final int count,
    final List<String> selectedColors,
    final List<Map<String, dynamic>> subItems,
    final bool isUpdating,
  }) = _$ItemsDetailsStateImpl;

  @override
  ItemsDetailsStatus get status;
  @override
  CartStatus get cartStatus;
  @override
  ItemsModel? get itemsModel;
  @override
  int get count;
  @override
  List<String> get selectedColors;
  @override
  List<Map<String, dynamic>> get subItems;
  @override
  bool get isUpdating;

  /// Create a copy of ItemsDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemsDetailsStateImplCopyWith<_$ItemsDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
