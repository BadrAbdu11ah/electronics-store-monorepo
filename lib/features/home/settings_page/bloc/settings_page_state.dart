part of 'settings_page_bloc.dart';

@freezed
class SettingsPageState with _$SettingsPageState {
  const factory SettingsPageState.initial() = _Initial;
  const factory SettingsPageState.loading() = _Loading;
  const factory SettingsPageState.loggedOut() = _LoggedOut;
}
