part of 'add_category_bloc.dart';

@freezed
abstract class AddCategoryStatus with _$AddCategoryStatus {
  const factory AddCategoryStatus.initial() = _Initial;
  const factory AddCategoryStatus.loading() = _Loading;
  const factory AddCategoryStatus.success() = _Success;
  const factory AddCategoryStatus.serverFailure(String message) =
      _ServerFailure;
}

@freezed
abstract class SnackBarStatus with _$SnackBarStatus {
  const factory SnackBarStatus.initial() = _SnackBarInitial;
  const factory SnackBarStatus.success(String message) = _SnackBarSuccess;
  const factory SnackBarStatus.failure(String message) = _SnackBarFailure;
}

@freezed
abstract class AddCategoryState with _$AddCategoryState {
  const factory AddCategoryState({
    @Default(AddCategoryStatus.initial()) AddCategoryStatus status,
    File? image,
    @Default(SnackBarStatus.initial()) SnackBarStatus snackBarStatus,
  }) = _AddCategoryState;
}
