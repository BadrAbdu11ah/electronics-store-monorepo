import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/features/address/feature/view/bloc/address_view_bloc.dart';
import 'package:electronics_store/features/address/feature/view/components/card_address.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressListView extends StatelessWidget {
  final AddressViewState state;
  const AddressListView({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: ListView.builder(
        itemCount: state.addresses.length,
        itemBuilder: (BuildContext context, int i) {
          final addressModel = state.addresses[i];
          return CardAddress(
            addressModel: addressModel,
            onDelete: () {
              context.read<AddressViewBloc>().add(
                AddressViewEvent.deleteAddress(addressModel.id!),
              );
            },
            onEdit: () {
              Navigator.pushNamed(
                context,
                AppRoute.addressEdit,
                arguments: addressModel,
              );
            },
          );
        },
      ),
    );
  }
}
