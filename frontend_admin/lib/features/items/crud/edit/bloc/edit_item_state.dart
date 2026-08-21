part of 'edit_item_bloc.dart';

@freezed
abstract class EditItemStatus with _$EditItemStatus {
  const factory EditItemStatus.initial() = _Initial;
  const factory EditItemStatus.loading() = _Loading;
  const factory EditItemStatus.success() = _Success;
  const factory EditItemStatus.serverFailure(String message) = _ServerFailure;
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
abstract class EditItemState with _$EditItemState {
  const factory EditItemState({
    @Default(EditItemStatus.initial()) EditItemStatus status,
    @Default(SnackBarStatus.initial()) SnackBarStatus snackBarStatus,
    @Default(CategoriesStatus.initial()) CategoriesStatus categoriesStatus,
    File? image,
    int? active,
    CategoryModel? category,
  }) = _EditItemState;
}
