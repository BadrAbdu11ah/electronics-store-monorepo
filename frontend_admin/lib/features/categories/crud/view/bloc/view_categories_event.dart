part of 'view_categories_bloc.dart';

@freezed
abstract class ViewCategoriesEvent with _$ViewCategoriesEvent {
  const factory ViewCategoriesEvent.fetchCategories() = _FetchCategories;
  const factory ViewCategoriesEvent.deleteCategory(int categoryId) =
      _DeleteCategory;
}
