part of 'add_category_bloc.dart';

@freezed
abstract class AddCategoryEvent with _$AddCategoryEvent {
  const factory AddCategoryEvent.submit({
    required String name,
    required String nameAr,
    required String description,
  }) = _Submit;
  const factory AddCategoryEvent.setImage(File file) = _SetImege;
}
