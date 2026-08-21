part of 'edit_item_bloc.dart';

@freezed
abstract class EditItemEvent with _$EditItemEvent {
  const factory EditItemEvent.started({
    required CategoryModel category,
    required int active,
  }) = _Started;
  const factory EditItemEvent.loadCategories() = _LoadCategories;
  const factory EditItemEvent.submit(
    int id, {
    required String name,
    required String nameAr,
    required String description,
    required String descriptionAr,
    required int count,
    required double price,
    required double discount,
    required int deliveryTime,
  }) = _Submit;
  const factory EditItemEvent.setImage(File file) = _SetImege;
  const factory EditItemEvent.setCategory(CategoryModel category) =
      _SetCategory;
  const factory EditItemEvent.setActive(int active) = _SetActive;
}
