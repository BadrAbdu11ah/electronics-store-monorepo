part of 'settings_page_bloc.dart';

@freezed
class SettingsPageState with _$SettingsPageState {
  const factory SettingsPageState.initial() = _Initial;
  const factory SettingsPageState.loading() = _Loading;
  const factory SettingsPageState.serverFailure(String message) =
      _ServerFailure;
  const factory SettingsPageState.loggedOut() = _LoggedOut;
}
