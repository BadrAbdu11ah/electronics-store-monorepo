part of 'add_item_bloc.dart';

@freezed
abstract class AddItemStatus with _$AddItemStatus {
  const factory AddItemStatus.initial() = _Initial;
  const factory AddItemStatus.loading() = _Loading;
  const factory AddItemStatus.serverFailure(String message) = _ServerFailure;
}

@freezed
abstract class SnackBarStatus with _$SnackBarStatus {
  const factory SnackBarStatus.initial() = _SnackBarInitial;
  const factory SnackBarStatus.success(String message) = _SnackBarSuccess;
  const factory SnackBarStatus.failure(String message) = _SnackBarFailure;
}

@freezed
abstract class CategoriesStatus with _$CategoriesStatus {
  const factory CategoriesStatus.initial() = _CategoriesInitial;
  const factory CategoriesStatus.loading() = _CategoriesLoading;
  const factory CategoriesStatus.loaded(List<CategoryModel> categories) =
      _CategoriesLoaded;
}

@freezed
abstract class AddItemState with _$AddItemState {
  const factory AddItemState({
    @Default(AddItemStatus.initial()) AddItemStatus status,
    @Default(CategoriesStatus.initial()) CategoriesStatus categoriesStatus,
    @Default(SnackBarStatus.initial()) SnackBarStatus snackBarStatus,
    File? image,
    CategoryModel? category,
  }) = _AddItemState;
}
