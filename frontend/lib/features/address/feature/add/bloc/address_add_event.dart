part of 'address_add_bloc.dart';

@freezed
abstract class AddressAddEvent with _$AddressAddEvent {
  const factory AddressAddEvent.started() = _Started;
  const factory AddressAddEvent.loadCurrentPositionApp() =
      _LoadCurrentPositionApp;
}
