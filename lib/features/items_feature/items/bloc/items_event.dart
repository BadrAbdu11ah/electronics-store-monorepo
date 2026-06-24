part of 'items_bloc.dart';

@freezed
class ItemsEvent with _$ItemsEvent {
  const factory ItemsEvent.started({
    required int categoryId,
    required List<CategoriesModel> categories,
  }) = _Started;
  const factory ItemsEvent.loadItems({required int categoryId}) = _LoadItems;
  const factory ItemsEvent.addFavorite(int itemsId) = _AddFavorite;
  const factory ItemsEvent.removeFavorite(int itemsId) = _RemoveFavorite;
}
