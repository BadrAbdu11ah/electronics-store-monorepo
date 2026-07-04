part of 'favorite_bloc.dart';

@freezed
class FavoriteStatus with _$FavoriteStatus {
  const factory FavoriteStatus.initial() = _Initial;
  const factory FavoriteStatus.loading() = _Loading;
  const factory FavoriteStatus.loaded() = _loaded;
  const factory FavoriteStatus.noData(String message) = _NoData;
  const factory FavoriteStatus.serverFailure(String message) = _ServerFailure;
}

@freezed
class RemoveStatus with _$RemoveStatus {
  const factory RemoveStatus.initial() = _RemoveInitial;
  const factory RemoveStatus.success(String message) = _RemoveSuccess;
  const factory RemoveStatus.failure(String message) = _RemoveFailure;
}

@freezed
abstract class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    @Default(FavoriteStatus.initial()) FavoriteStatus status,
    @Default(RemoveStatus.initial()) RemoveStatus removeStatus,
    @Default("en") String lang,
    @Default([]) List<ItemModel> items,
  }) = _FavoriteState;
}
