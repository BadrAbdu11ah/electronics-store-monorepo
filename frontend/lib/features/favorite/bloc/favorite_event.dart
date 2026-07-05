part of 'favorite_bloc.dart';

@freezed
class FavoriteEvent with _$FavoriteEvent {
  const factory FavoriteEvent.started() = _Started;
  const factory FavoriteEvent.loadFavoriteProducts() = _LoadFavoriteProducts;
  const factory FavoriteEvent.removeFavorite(int itemId) = _RemoveFavorite;
}
