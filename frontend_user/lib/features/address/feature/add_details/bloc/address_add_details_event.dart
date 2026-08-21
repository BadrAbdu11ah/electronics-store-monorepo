part of 'address_add_details_bloc.dart';

@freezed
abstract class AddressAddDetailsEvent with _$AddressAddDetailsEvent {
  const factory AddressAddDetailsEvent.submit({
    required String? name,
    required String? city,
    required String? street,
    required String? lat,
    required String? long,
    required String? phone,
  }) = _Submit;
}
