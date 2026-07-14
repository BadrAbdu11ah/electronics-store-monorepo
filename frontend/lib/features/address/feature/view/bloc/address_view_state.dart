part of 'address_view_bloc.dart';

@freezed
abstract class AddressViewStatus with _$AddressViewStatus {
  const factory AddressViewStatus.initial() = _Initial;
  const factory AddressViewStatus.loading() = _Loading;
  const factory AddressViewStatus.loaded() = _Loaded;
  const factory AddressViewStatus.noData(String message) = _NoData;
  const factory AddressViewStatus.serverFailure(String message) =
      _ServerFailure;
}

@freezed
abstract class DeleteStatus with _$DeleteStatus {
  const factory DeleteStatus.initial() = _DeleteInitial;
  const factory DeleteStatus.success(String message) = _DeleteSuccess;
  const factory DeleteStatus.failure(String message) = _DeleteFailure;
}

@freezed
abstract class AddressViewState with _$AddressViewState {
  const factory AddressViewState({
    @Default(AddressViewStatus.initial()) AddressViewStatus status,
    @Default(DeleteStatus.initial()) DeleteStatus deleteState,
    @Default([]) List<AddressModel> addresses,
  }) = _AddressViewState;
}
