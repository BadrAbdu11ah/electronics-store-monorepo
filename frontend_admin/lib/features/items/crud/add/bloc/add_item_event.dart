part of 'add_item_bloc.dart';

@freezed
abstract class AddItemEvent with _$AddItemEvent {
  const factory AddItemEvent.started() = _Started;
  const factory AddItemEvent.loadCategories() = _LoadCategories;
  const factory AddItemEvent.submit({
    required String name,
    required String nameAr,
    required String description,
    required String descriptionAr,
    required int count,
    required int active,
    required double price,
    required double discount,
    required int deliveryTime,
  }) = _Submit;
  const factory AddItemEvent.setImage(File file) = _SetImege;
  const factory AddItemEvent.setCategory(CategoryModel category) = _SetCategory;
}
