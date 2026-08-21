part of 'settings_page_bloc.dart';

@freezed
class SettingsPageEvent with _$SettingsPageEvent {
  const factory SettingsPageEvent.logout() = _Logout;
}
