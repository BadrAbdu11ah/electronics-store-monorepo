import 'package:electronics_store/features/address/data/address_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_add_details_event.dart';
part 'address_add_details_state.dart';
part 'address_add_details_bloc.freezed.dart';

class AddressAddDetailsBloc
    extends Bloc<AddressAddDetailsEvent, AddressAddDetailsState> {
  final AddressData addressData;
  AddressAddDetailsBloc(this.addressData)
    : super(AddressAddDetailsState.initial()) {
    on<_Submit>(_onSubmit);
  }

  Future<void> _onSubmit(
    _Submit event,
    Emitter<AddressAddDetailsState> emit,
  ) async {
    emit(_Loading());

    var response = await addressData.addAddress({
      "name": event.name,
      "city": event.city,
      "street": event.street,
      "lat": event.lat.toString(),
      "long": event.long.toString(),
      "phone": event.phone,
    });

    response.fold(
      (failure) => emit(_ServerFailure(failure.message)),
      (message) => emit(_Success(message)),
    );
  }
}
