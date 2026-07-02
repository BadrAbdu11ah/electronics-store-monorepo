part of 'home_screen_bloc.dart';

@freezed
class HomeScreenStatus with _$HomeScreenStatus {
  const factory HomeScreenStatus.initial() = _Initial;
  const factory HomeScreenStatus.loading() = _Loading;
  const factory HomeScreenStatus.loaded() = _Loaded;
  const factory HomeScreenStatus.serverFailure(String message) = _ServerFailure;
}

@freezed
abstract class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    @Default(HomeScreenStatus.initial()) HomeScreenStatus status,
    @Default(0) int currentPage,
  }) = _HomeScreenState;
}
