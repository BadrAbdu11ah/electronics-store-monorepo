part of 'offers_bloc.dart';

@freezed
abstract class OffersStatus with _$OffersStatus {
  const factory OffersStatus.initial() = _Initial;
  const factory OffersStatus.loading() = _Loading;
  const factory OffersStatus.loaded({
    required List<ItemModel> items,
    required String lang,
  }) = _Loaded;
  const factory OffersStatus.serverFailure(String message) = _ServerFailure;
  const factory OffersStatus.empty(String message) = _Empty;
}

@freezed
class FavoriteStatus with _$FavoriteStatus {
  const factory FavoriteStatus.initial() = _FavInitial;
  const factory FavoriteStatus.success(String message) = _FavSuccess;
  const factory FavoriteStatus.failure(String errorMessage) = _FavFailure;
}

@freezed
abstract class OffersState with _$OffersState {
  const factory OffersState({
    @Default(OffersStatus.initial()) OffersStatus status,
    @Default(FavoriteStatus.initial()) FavoriteStatus favoriteStatus,
    @Default({}) Map<int, bool> isFavorite,
  }) = _ItemsState;
}
