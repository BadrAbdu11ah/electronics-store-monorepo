part of 'edit_category_bloc.dart';

@freezed
abstract class EditCategoryEvent with _$EditCategoryEvent {
  const factory EditCategoryEvent.submit(
    int id, {
    required String name,
    required String nameAr,
    required String description,
  }) = _Submit;

  const factory EditCategoryEvent.setImage(File file) = _SetImege;
}
