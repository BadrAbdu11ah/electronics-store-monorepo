part of 'edit_category_bloc.dart';

@freezed
abstract class EditCategoryStatus with _$EditCategoryStatus {
  const factory EditCategoryStatus.initial() = _Initial;
  const factory EditCategoryStatus.loading() = _Loading;
  const factory EditCategoryStatus.success() = _Success;
  const factory EditCategoryStatus.serverFailure(String message) =
      _ServerFailure;
}

@freezed
abstract class SnackBarStatus with _$SnackBarStatus {
  const factory SnackBarStatus.initial() = _SnackBarInitial;
  const factory SnackBarStatus.success(String message) = _SnackBarSuccess;
  const factory SnackBarStatus.failure(String message) = _SnackBarFailure;
}

@freezed
abstract class EditCategoryState with _$EditCategoryState {
  const factory EditCategoryState({
    @Default(EditCategoryStatus.initial()) EditCategoryStatus status,
    File? image,
    @Default(SnackBarStatus.initial()) SnackBarStatus snackBarStatus,
  }) = _EditCategoryState;
}
