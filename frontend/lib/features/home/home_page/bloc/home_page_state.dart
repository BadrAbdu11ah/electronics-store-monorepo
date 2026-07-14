part of 'home_page_bloc.dart';

@freezed
class HomePageStatus with _$HomePageStatus {
  const factory HomePageStatus.initial() = _Initial;
  const factory HomePageStatus.loading() = _Loading;
  const factory HomePageStatus.loaded() = _Loaded;
  const factory HomePageStatus.noData(String message) = _NoData;
  const factory HomePageStatus.loggedOut() = _LoggedOut;
  const factory HomePageStatus.serverFailure(String message) = _ServerFailure;
}

@freezed
abstract class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default(HomePageStatus.initial()) HomePageStatus status,
    String? lang,
    @Default([]) List<CategoryModel> categories,
    @Default([]) List<ItemModel> items,
  }) = _HomePageState;
}
