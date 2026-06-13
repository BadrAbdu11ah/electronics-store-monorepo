// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LocalizationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSavedLocalization,
    required TResult Function(String langCode) changeLocalization,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSavedLocalization,
    TResult? Function(String langCode)? changeLocalization,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSavedLocalization,
    TResult Function(String langCode)? changeLocalization,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSavedLocalization value)
    loadSavedLocalization,
    required TResult Function(_ChangeLocalization value) changeLocalization,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSavedLocalization value)? loadSavedLocalization,
    TResult? Function(_ChangeLocalization value)? changeLocalization,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSavedLocalization value)? loadSavedLocalization,
    TResult Function(_ChangeLocalization value)? changeLocalization,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationEventCopyWith<$Res> {
  factory $LocalizationEventCopyWith(
    LocalizationEvent value,
    $Res Function(LocalizationEvent) then,
  ) = _$LocalizationEventCopyWithImpl<$Res, LocalizationEvent>;
}

/// @nodoc
class _$LocalizationEventCopyWithImpl<$Res, $Val extends LocalizationEvent>
    implements $LocalizationEventCopyWith<$Res> {
  _$LocalizationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadSavedLocalizationImplCopyWith<$Res> {
  factory _$$LoadSavedLocalizationImplCopyWith(
    _$LoadSavedLocalizationImpl value,
    $Res Function(_$LoadSavedLocalizationImpl) then,
  ) = __$$LoadSavedLocalizationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadSavedLocalizationImplCopyWithImpl<$Res>
    extends _$LocalizationEventCopyWithImpl<$Res, _$LoadSavedLocalizationImpl>
    implements _$$LoadSavedLocalizationImplCopyWith<$Res> {
  __$$LoadSavedLocalizationImplCopyWithImpl(
    _$LoadSavedLocalizationImpl _value,
    $Res Function(_$LoadSavedLocalizationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalizationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadSavedLocalizationImpl implements _LoadSavedLocalization {
  const _$LoadSavedLocalizationImpl();

  @override
  String toString() {
    return 'LocalizationEvent.loadSavedLocalization()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSavedLocalizationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSavedLocalization,
    required TResult Function(String langCode) changeLocalization,
  }) {
    return loadSavedLocalization();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSavedLocalization,
    TResult? Function(String langCode)? changeLocalization,
  }) {
    return loadSavedLocalization?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSavedLocalization,
    TResult Function(String langCode)? changeLocalization,
    required TResult orElse(),
  }) {
    if (loadSavedLocalization != null) {
      return loadSavedLocalization();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSavedLocalization value)
    loadSavedLocalization,
    required TResult Function(_ChangeLocalization value) changeLocalization,
  }) {
    return loadSavedLocalization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSavedLocalization value)? loadSavedLocalization,
    TResult? Function(_ChangeLocalization value)? changeLocalization,
  }) {
    return loadSavedLocalization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSavedLocalization value)? loadSavedLocalization,
    TResult Function(_ChangeLocalization value)? changeLocalization,
    required TResult orElse(),
  }) {
    if (loadSavedLocalization != null) {
      return loadSavedLocalization(this);
    }
    return orElse();
  }
}

abstract class _LoadSavedLocalization implements LocalizationEvent {
  const factory _LoadSavedLocalization() = _$LoadSavedLocalizationImpl;
}

/// @nodoc
abstract class _$$ChangeLocalizationImplCopyWith<$Res> {
  factory _$$ChangeLocalizationImplCopyWith(
    _$ChangeLocalizationImpl value,
    $Res Function(_$ChangeLocalizationImpl) then,
  ) = __$$ChangeLocalizationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String langCode});
}

/// @nodoc
class __$$ChangeLocalizationImplCopyWithImpl<$Res>
    extends _$LocalizationEventCopyWithImpl<$Res, _$ChangeLocalizationImpl>
    implements _$$ChangeLocalizationImplCopyWith<$Res> {
  __$$ChangeLocalizationImplCopyWithImpl(
    _$ChangeLocalizationImpl _value,
    $Res Function(_$ChangeLocalizationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalizationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? langCode = null}) {
    return _then(
      _$ChangeLocalizationImpl(
        null == langCode
            ? _value.langCode
            : langCode // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ChangeLocalizationImpl implements _ChangeLocalization {
  const _$ChangeLocalizationImpl(this.langCode);

  @override
  final String langCode;

  @override
  String toString() {
    return 'LocalizationEvent.changeLocalization(langCode: $langCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLocalizationImpl &&
            (identical(other.langCode, langCode) ||
                other.langCode == langCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, langCode);

  /// Create a copy of LocalizationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeLocalizationImplCopyWith<_$ChangeLocalizationImpl> get copyWith =>
      __$$ChangeLocalizationImplCopyWithImpl<_$ChangeLocalizationImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSavedLocalization,
    required TResult Function(String langCode) changeLocalization,
  }) {
    return changeLocalization(langCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSavedLocalization,
    TResult? Function(String langCode)? changeLocalization,
  }) {
    return changeLocalization?.call(langCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSavedLocalization,
    TResult Function(String langCode)? changeLocalization,
    required TResult orElse(),
  }) {
    if (changeLocalization != null) {
      return changeLocalization(langCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSavedLocalization value)
    loadSavedLocalization,
    required TResult Function(_ChangeLocalization value) changeLocalization,
  }) {
    return changeLocalization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSavedLocalization value)? loadSavedLocalization,
    TResult? Function(_ChangeLocalization value)? changeLocalization,
  }) {
    return changeLocalization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSavedLocalization value)? loadSavedLocalization,
    TResult Function(_ChangeLocalization value)? changeLocalization,
    required TResult orElse(),
  }) {
    if (changeLocalization != null) {
      return changeLocalization(this);
    }
    return orElse();
  }
}

abstract class _ChangeLocalization implements LocalizationEvent {
  const factory _ChangeLocalization(final String langCode) =
      _$ChangeLocalizationImpl;

  String get langCode;

  /// Create a copy of LocalizationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeLocalizationImplCopyWith<_$ChangeLocalizationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocalizationState {
  Locale get locale => throw _privateConstructorUsedError;
  ThemeData get themeData => throw _privateConstructorUsedError;

  /// Create a copy of LocalizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalizationStateCopyWith<LocalizationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationStateCopyWith<$Res> {
  factory $LocalizationStateCopyWith(
    LocalizationState value,
    $Res Function(LocalizationState) then,
  ) = _$LocalizationStateCopyWithImpl<$Res, LocalizationState>;
  @useResult
  $Res call({Locale locale, ThemeData themeData});
}

/// @nodoc
class _$LocalizationStateCopyWithImpl<$Res, $Val extends LocalizationState>
    implements $LocalizationStateCopyWith<$Res> {
  _$LocalizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? locale = null, Object? themeData = null}) {
    return _then(
      _value.copyWith(
            locale: null == locale
                ? _value.locale
                : locale // ignore: cast_nullable_to_non_nullable
                      as Locale,
            themeData: null == themeData
                ? _value.themeData
                : themeData // ignore: cast_nullable_to_non_nullable
                      as ThemeData,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocalizationStateImplCopyWith<$Res>
    implements $LocalizationStateCopyWith<$Res> {
  factory _$$LocalizationStateImplCopyWith(
    _$LocalizationStateImpl value,
    $Res Function(_$LocalizationStateImpl) then,
  ) = __$$LocalizationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Locale locale, ThemeData themeData});
}

/// @nodoc
class __$$LocalizationStateImplCopyWithImpl<$Res>
    extends _$LocalizationStateCopyWithImpl<$Res, _$LocalizationStateImpl>
    implements _$$LocalizationStateImplCopyWith<$Res> {
  __$$LocalizationStateImplCopyWithImpl(
    _$LocalizationStateImpl _value,
    $Res Function(_$LocalizationStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalizationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? locale = null, Object? themeData = null}) {
    return _then(
      _$LocalizationStateImpl(
        locale: null == locale
            ? _value.locale
            : locale // ignore: cast_nullable_to_non_nullable
                  as Locale,
        themeData: null == themeData
            ? _value.themeData
            : themeData // ignore: cast_nullable_to_non_nullable
                  as ThemeData,
      ),
    );
  }
}

/// @nodoc

class _$LocalizationStateImpl implements _LocalizationState {
  const _$LocalizationStateImpl({
    required this.locale,
    required this.themeData,
  });

  @override
  final Locale locale;
  @override
  final ThemeData themeData;

  @override
  String toString() {
    return 'LocalizationState(locale: $locale, themeData: $themeData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizationStateImpl &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.themeData, themeData) ||
                other.themeData == themeData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale, themeData);

  /// Create a copy of LocalizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizationStateImplCopyWith<_$LocalizationStateImpl> get copyWith =>
      __$$LocalizationStateImplCopyWithImpl<_$LocalizationStateImpl>(
        this,
        _$identity,
      );
}

abstract class _LocalizationState implements LocalizationState {
  const factory _LocalizationState({
    required final Locale locale,
    required final ThemeData themeData,
  }) = _$LocalizationStateImpl;

  @override
  Locale get locale;
  @override
  ThemeData get themeData;

  /// Create a copy of LocalizationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizationStateImplCopyWith<_$LocalizationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
