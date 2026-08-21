part of 'view_items_bloc.dart';

@freezed
sealed class ViewItemsStatus with _$ViewItemsStatus {
  const factory ViewItemsStatus.initial() = _Initial;
  const factory ViewItemsStatus.loading() = _Loading;
  const factory ViewItemsStatus.loaded({@Default([]) List<ItemModel> items}) =
      _Loaded;
  const factory ViewItemsStatus.serverFailure(String message) = _ServerFailure;
  const factory ViewItemsStatus.empty(String message) = _Empty;
}

@freezed
sealed class SnackBarStatus with _$SnackBarStatus {
  const factory SnackBarStatus.initial() = _SnackBarInitial;
  const factory SnackBarStatus.show(String message) = _SnackBarShow;
}

@freezed
abstract class ViewItemsState with _$ViewItemsState {
  const factory ViewItemsState({
    @Default(ViewItemsStatus.initial()) ViewItemsStatus status,
    @Default(SnackBarStatus.initial()) SnackBarStatus snackBarStatus,
  }) = _ViewItemsState;
}
