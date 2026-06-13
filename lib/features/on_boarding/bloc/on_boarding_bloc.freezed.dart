// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_boarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$OnBoardingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) pageChanged,
    required TResult Function(int listLength) nextPage,
    required TResult Function() skip,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? pageChanged,
    TResult? Function(int listLength)? nextPage,
    TResult? Function()? skip,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? pageChanged,
    TResult Function(int listLength)? nextPage,
    TResult Function()? skip,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_Skip value) skip,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_Skip value)? skip,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_Skip value)? skip,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBoardingEventCopyWith<$Res> {
  factory $OnBoardingEventCopyWith(
    OnBoardingEvent value,
    $Res Function(OnBoardingEvent) then,
  ) = _$OnBoardingEventCopyWithImpl<$Res, OnBoardingEvent>;
}

/// @nodoc
class _$OnBoardingEventCopyWithImpl<$Res, $Val extends OnBoardingEvent>
    implements $OnBoardingEventCopyWith<$Res> {
  _$OnBoardingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnBoardingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PageChangedImplCopyWith<$Res> {
  factory _$$PageChangedImplCopyWith(
    _$PageChangedImpl value,
    $Res Function(_$PageChangedImpl) then,
  ) = __$$PageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$PageChangedImplCopyWithImpl<$Res>
    extends _$OnBoardingEventCopyWithImpl<$Res, _$PageChangedImpl>
    implements _$$PageChangedImplCopyWith<$Res> {
  __$$PageChangedImplCopyWithImpl(
    _$PageChangedImpl _value,
    $Res Function(_$PageChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OnBoardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$PageChangedImpl(
        index: null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$PageChangedImpl implements _PageChanged {
  const _$PageChangedImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'OnBoardingEvent.pageChanged(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageChangedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of OnBoardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageChangedImplCopyWith<_$PageChangedImpl> get copyWith =>
      __$$PageChangedImplCopyWithImpl<_$PageChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) pageChanged,
    required TResult Function(int listLength) nextPage,
    required TResult Function() skip,
  }) {
    return pageChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? pageChanged,
    TResult? Function(int listLength)? nextPage,
    TResult? Function()? skip,
  }) {
    return pageChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? pageChanged,
    TResult Function(int listLength)? nextPage,
    TResult Function()? skip,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_Skip value) skip,
  }) {
    return pageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_Skip value)? skip,
  }) {
    return pageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_Skip value)? skip,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(this);
    }
    return orElse();
  }
}

abstract class _PageChanged implements OnBoardingEvent {
  const factory _PageChanged({required final int index}) = _$PageChangedImpl;

  int get index;

  /// Create a copy of OnBoardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageChangedImplCopyWith<_$PageChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextPageImplCopyWith<$Res> {
  factory _$$NextPageImplCopyWith(
    _$NextPageImpl value,
    $Res Function(_$NextPageImpl) then,
  ) = __$$NextPageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int listLength});
}

/// @nodoc
class __$$NextPageImplCopyWithImpl<$Res>
    extends _$OnBoardingEventCopyWithImpl<$Res, _$NextPageImpl>
    implements _$$NextPageImplCopyWith<$Res> {
  __$$NextPageImplCopyWithImpl(
    _$NextPageImpl _value,
    $Res Function(_$NextPageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OnBoardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? listLength = null}) {
    return _then(
      _$NextPageImpl(
        listLength: null == listLength
            ? _value.listLength
            : listLength // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$NextPageImpl implements _NextPage {
  const _$NextPageImpl({required this.listLength});

  @override
  final int listLength;

  @override
  String toString() {
    return 'OnBoardingEvent.nextPage(listLength: $listLength)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextPageImpl &&
            (identical(other.listLength, listLength) ||
                other.listLength == listLength));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listLength);

  /// Create a copy of OnBoardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NextPageImplCopyWith<_$NextPageImpl> get copyWith =>
      __$$NextPageImplCopyWithImpl<_$NextPageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) pageChanged,
    required TResult Function(int listLength) nextPage,
    required TResult Function() skip,
  }) {
    return nextPage(listLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? pageChanged,
    TResult? Function(int listLength)? nextPage,
    TResult? Function()? skip,
  }) {
    return nextPage?.call(listLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? pageChanged,
    TResult Function(int listLength)? nextPage,
    TResult Function()? skip,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(listLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_Skip value) skip,
  }) {
    return nextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_Skip value)? skip,
  }) {
    return nextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_Skip value)? skip,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(this);
    }
    return orElse();
  }
}

abstract class _NextPage implements OnBoardingEvent {
  const factory _NextPage({required final int listLength}) = _$NextPageImpl;

  int get listLength;

  /// Create a copy of OnBoardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NextPageImplCopyWith<_$NextPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SkipImplCopyWith<$Res> {
  factory _$$SkipImplCopyWith(
    _$SkipImpl value,
    $Res Function(_$SkipImpl) then,
  ) = __$$SkipImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SkipImplCopyWithImpl<$Res>
    extends _$OnBoardingEventCopyWithImpl<$Res, _$SkipImpl>
    implements _$$SkipImplCopyWith<$Res> {
  __$$SkipImplCopyWithImpl(_$SkipImpl _value, $Res Function(_$SkipImpl) _then)
    : super(_value, _then);

  /// Create a copy of OnBoardingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SkipImpl implements _Skip {
  const _$SkipImpl();

  @override
  String toString() {
    return 'OnBoardingEvent.skip()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SkipImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) pageChanged,
    required TResult Function(int listLength) nextPage,
    required TResult Function() skip,
  }) {
    return skip();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? pageChanged,
    TResult? Function(int listLength)? nextPage,
    TResult? Function()? skip,
  }) {
    return skip?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? pageChanged,
    TResult Function(int listLength)? nextPage,
    TResult Function()? skip,
    required TResult orElse(),
  }) {
    if (skip != null) {
      return skip();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_Skip value) skip,
  }) {
    return skip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_Skip value)? skip,
  }) {
    return skip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_Skip value)? skip,
    required TResult orElse(),
  }) {
    if (skip != null) {
      return skip(this);
    }
    return orElse();
  }
}

abstract class _Skip implements OnBoardingEvent {
  const factory _Skip() = _$SkipImpl;
}

/// @nodoc
mixin _$OnBoardingStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() navigateToLogin,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? navigateToLogin,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? navigateToLogin,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NavigateToLogin value) navigateToLogin,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NavigateToLogin value)? navigateToLogin,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NavigateToLogin value)? navigateToLogin,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBoardingStatusCopyWith<$Res> {
  factory $OnBoardingStatusCopyWith(
    OnBoardingStatus value,
    $Res Function(OnBoardingStatus) then,
  ) = _$OnBoardingStatusCopyWithImpl<$Res, OnBoardingStatus>;
}

/// @nodoc
class _$OnBoardingStatusCopyWithImpl<$Res, $Val extends OnBoardingStatus>
    implements $OnBoardingStatusCopyWith<$Res> {
  _$OnBoardingStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnBoardingStatus
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
    extends _$OnBoardingStatusCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OnBoardingStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'OnBoardingStatus.initial()';
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
    required TResult Function() navigateToLogin,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? navigateToLogin,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? navigateToLogin,
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
    required TResult Function(_NavigateToLogin value) navigateToLogin,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NavigateToLogin value)? navigateToLogin,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NavigateToLogin value)? navigateToLogin,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OnBoardingStatus {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$NavigateToLoginImplCopyWith<$Res> {
  factory _$$NavigateToLoginImplCopyWith(
    _$NavigateToLoginImpl value,
    $Res Function(_$NavigateToLoginImpl) then,
  ) = __$$NavigateToLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateToLoginImplCopyWithImpl<$Res>
    extends _$OnBoardingStatusCopyWithImpl<$Res, _$NavigateToLoginImpl>
    implements _$$NavigateToLoginImplCopyWith<$Res> {
  __$$NavigateToLoginImplCopyWithImpl(
    _$NavigateToLoginImpl _value,
    $Res Function(_$NavigateToLoginImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OnBoardingStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NavigateToLoginImpl implements _NavigateToLogin {
  const _$NavigateToLoginImpl();

  @override
  String toString() {
    return 'OnBoardingStatus.navigateToLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigateToLoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() navigateToLogin,
  }) {
    return navigateToLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? navigateToLogin,
  }) {
    return navigateToLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? navigateToLogin,
    required TResult orElse(),
  }) {
    if (navigateToLogin != null) {
      return navigateToLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NavigateToLogin value) navigateToLogin,
  }) {
    return navigateToLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NavigateToLogin value)? navigateToLogin,
  }) {
    return navigateToLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NavigateToLogin value)? navigateToLogin,
    required TResult orElse(),
  }) {
    if (navigateToLogin != null) {
      return navigateToLogin(this);
    }
    return orElse();
  }
}

abstract class _NavigateToLogin implements OnBoardingStatus {
  const factory _NavigateToLogin() = _$NavigateToLoginImpl;
}

/// @nodoc
mixin _$OnBoardingState {
  OnBoardingStatus get status => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  /// Create a copy of OnBoardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnBoardingStateCopyWith<OnBoardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBoardingStateCopyWith<$Res> {
  factory $OnBoardingStateCopyWith(
    OnBoardingState value,
    $Res Function(OnBoardingState) then,
  ) = _$OnBoardingStateCopyWithImpl<$Res, OnBoardingState>;
  @useResult
  $Res call({OnBoardingStatus status, int currentPage});

  $OnBoardingStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$OnBoardingStateCopyWithImpl<$Res, $Val extends OnBoardingState>
    implements $OnBoardingStateCopyWith<$Res> {
  _$OnBoardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnBoardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? currentPage = null}) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as OnBoardingStatus,
            currentPage: null == currentPage
                ? _value.currentPage
                : currentPage // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }

  /// Create a copy of OnBoardingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OnBoardingStatusCopyWith<$Res> get status {
    return $OnBoardingStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OnBoardingStateImplCopyWith<$Res>
    implements $OnBoardingStateCopyWith<$Res> {
  factory _$$OnBoardingStateImplCopyWith(
    _$OnBoardingStateImpl value,
    $Res Function(_$OnBoardingStateImpl) then,
  ) = __$$OnBoardingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OnBoardingStatus status, int currentPage});

  @override
  $OnBoardingStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$OnBoardingStateImplCopyWithImpl<$Res>
    extends _$OnBoardingStateCopyWithImpl<$Res, _$OnBoardingStateImpl>
    implements _$$OnBoardingStateImplCopyWith<$Res> {
  __$$OnBoardingStateImplCopyWithImpl(
    _$OnBoardingStateImpl _value,
    $Res Function(_$OnBoardingStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OnBoardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? currentPage = null}) {
    return _then(
      _$OnBoardingStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as OnBoardingStatus,
        currentPage: null == currentPage
            ? _value.currentPage
            : currentPage // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$OnBoardingStateImpl implements _OnBoardingState {
  const _$OnBoardingStateImpl({
    this.status = const OnBoardingStatus.initial(),
    this.currentPage = 0,
  });

  @override
  @JsonKey()
  final OnBoardingStatus status;
  @override
  @JsonKey()
  final int currentPage;

  @override
  String toString() {
    return 'OnBoardingState(status: $status, currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnBoardingStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, currentPage);

  /// Create a copy of OnBoardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnBoardingStateImplCopyWith<_$OnBoardingStateImpl> get copyWith =>
      __$$OnBoardingStateImplCopyWithImpl<_$OnBoardingStateImpl>(
        this,
        _$identity,
      );
}

abstract class _OnBoardingState implements OnBoardingState {
  const factory _OnBoardingState({
    final OnBoardingStatus status,
    final int currentPage,
  }) = _$OnBoardingStateImpl;

  @override
  OnBoardingStatus get status;
  @override
  int get currentPage;

  /// Create a copy of OnBoardingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnBoardingStateImplCopyWith<_$OnBoardingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
