part of 'address_view_bloc.dart';

@freezed
abstract class AddressViewEvent with _$AddressViewEvent {
  const factory AddressViewEvent.started() = _Started;
  const factory AddressViewEvent.loadAddresses() = _LoadAddresses;
  const factory AddressViewEvent.deleteAddress(int id) = _DeleteAddress;
}
