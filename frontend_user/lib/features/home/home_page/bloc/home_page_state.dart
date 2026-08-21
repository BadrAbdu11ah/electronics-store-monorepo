part of 'home_page_bloc.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.initial() = _Initial;
  const factory HomePageState.loading() = _Loading;
  const factory HomePageState.loaded({
    required String lang,
    required List<CategoryModel> categories,
    required List<ItemModel> items,
    required SettingModel settings,
  }) = _Loaded;
  const factory HomePageState.noData(String message) = _NoData;
  const factory HomePageState.loggedOut() = _LoggedOut;
  const factory HomePageState.serverFailure(String message) = _ServerFailure;
}
