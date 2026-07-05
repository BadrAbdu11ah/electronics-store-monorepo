part of 'home_page_bloc.dart';

@freezed
class HomePageEvent with _$HomePageEvent {
  const factory HomePageEvent.started() = _Started;
  const factory HomePageEvent.loadData() = _LoadData;
  const factory HomePageEvent.searchData(String query) = _SearchData;
  const factory HomePageEvent.searchEmpty() = _SearchEmpty;
  const factory HomePageEvent.logout() = _Logout;
}
