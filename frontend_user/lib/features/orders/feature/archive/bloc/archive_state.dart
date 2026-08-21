part of 'archive_bloc.dart';

@freezed
abstract class ArchiveStatus with _$ArchiveStatus {
  const factory ArchiveStatus.initial() = _Initial;
  const factory ArchiveStatus.loading() = _Loading;
  const factory ArchiveStatus.empty(String message) = _Empty;
  const factory ArchiveStatus.loaded({@Default([]) List<OrderModel> orders}) =
      _Loaded;
  const factory ArchiveStatus.serverFailure(String message) = _ServerFailure;
}

@freezed
abstract class RateStatus with _$RateStatus {
  const factory RateStatus.initial() = _RateInitial;
  const factory RateStatus.loading() = _RateLoading;
  const factory RateStatus.success(String message) = _RateSuccess;
  const factory RateStatus.failure(String message) = _RateFailure;
}

@freezed
abstract class ArchiveState with _$ArchiveState {
  const factory ArchiveState({
    @Default(ArchiveStatus.initial()) ArchiveStatus status,
    @Default(RateStatus.initial()) RateStatus rateStatus,
  }) = _ArchiveState;
}
