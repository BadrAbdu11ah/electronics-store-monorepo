part of 'items_details_bloc.dart';

@freezed
class ItemsDetailsStatus with _$ItemsDetailsStatus {
  const factory ItemsDetailsStatus.initial() = _Initial;
  const factory ItemsDetailsStatus.loading() = _Loading;
  const factory ItemsDetailsStatus.loaded() = _Loaded;
  const factory ItemsDetailsStatus.serverFailure(String errorMessage) =
      _ServerFailure;
}

@freezed
class CartStatus with _$CartStatus {
  const factory CartStatus.initial() = _CartInitial;
  const factory CartStatus.failure(String errorMessage) = _failure;
  const factory CartStatus.success(String message) = _Success;
}

@freezed
class ItemsDetailsState with _$ItemsDetailsState {
  const factory ItemsDetailsState({
    @Default(ItemsDetailsStatus.initial()) ItemsDetailsStatus status,
    @Default(CartStatus.initial()) CartStatus cartStatus,
    ItemsModel? itemsModel,
    @Default(0) int count,
    @Default([]) List<String> selectedColors,
    @Default([
      {"id": "1", "name": "red", "active": false},
      {"id": "2", "name": "black", "active": false},
      {"id": "3", "name": "grey", "active": false},
    ])
    List<Map<String, dynamic>> subItems,
    @Default(false) bool isUpdating,
  }) = _ItemsDetailsState;
}
