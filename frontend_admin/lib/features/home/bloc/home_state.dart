part of 'home_bloc.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.logoutSuccess() = _LogoutSuccess;
  const factory HomeState.logoutFailure({required String message}) =
      _LogoutFailure;
}
