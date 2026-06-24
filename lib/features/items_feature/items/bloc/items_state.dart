part of 'items_bloc.dart';

// 1. حالة الصفحة العامة (جلب البيانات الأساسية)
@freezed
class ItemsStatus with _$ItemsStatus {
  const factory ItemsStatus.initial() = _Initial;
  const factory ItemsStatus.loading() = _Loading;
  const factory ItemsStatus.loaded() = _Loaded;
  const factory ItemsStatus.serverFailure(String errorMessage) = _ServerFailure;
}

// 2. حالة العمليات الجانبية للمفضلة
@freezed
class FavoriteStatus with _$FavoriteStatus {
  const factory FavoriteStatus.initial() = _FavInitial;
  const factory FavoriteStatus.success(String message) = _FavSuccess;
  const factory FavoriteStatus.failure(String errorMessage) = _FavFailure;
}

@freezed
class ItemsState with _$ItemsState {
  const factory ItemsState({
    @Default(ItemsStatus.initial()) ItemsStatus status,
    @Default(FavoriteStatus.initial()) FavoriteStatus favoriteStatus,
    @Default([]) List<ItemsModel> items,
    @Default([]) List<CategoriesModel> categories,
    @Default(0) int categoryId,
    @Default({}) Map<int, int> isFavorite,
    String? lang,
  }) = _ItemsState;
}
