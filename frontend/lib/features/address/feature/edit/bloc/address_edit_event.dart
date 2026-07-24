part of 'address_edit_bloc.dart';

@freezed
abstract class AddressEditEvent with _$AddressEditEvent {
  const factory AddressEditEvent.submit({
    required int? addressId,
    required String? name,
    required String? city,
    required String? street,
    required String? lat,
    required String? long,
    required String? phone,
  }) = _Submit;
}
