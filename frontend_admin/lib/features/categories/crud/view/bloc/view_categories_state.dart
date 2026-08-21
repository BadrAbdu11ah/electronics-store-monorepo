part of 'view_categories_bloc.dart';

@freezed
sealed class ViewCategoriesStatus with _$ViewCategoriesStatus {
  const factory ViewCategoriesStatus.initial() = _Initial;
  const factory ViewCategoriesStatus.loading() = _Loading;
  const factory ViewCategoriesStatus.loaded({
    @Default([]) List<CategoryModel> categories,
  }) = _Loaded;
  const factory ViewCategoriesStatus.serverFailure(String message) =
      _ServerFailure;
  const factory ViewCategoriesStatus.empty(String message) = _Empty;
}

@freezed
sealed class SnackBarStatus with _$SnackBarStatus {
  const factory SnackBarStatus.initial() = _SnackBarInitial;
  const factory SnackBarStatus.show(String message) = _SnackBarShow;
}

@freezed
abstract class ViewCategoriesState with _$ViewCategoriesState {
  const factory ViewCategoriesState({
    @Default(ViewCategoriesStatus.initial()) ViewCategoriesStatus status,
    @Default(SnackBarStatus.initial()) SnackBarStatus snackBarStatus,
  }) = _ViewCategoriesState;
}
