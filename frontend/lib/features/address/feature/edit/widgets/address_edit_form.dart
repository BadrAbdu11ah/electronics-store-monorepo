import 'package:electronics_store/core/shared/custom_button.dart';
import 'package:electronics_store/data/model/address/address_model.dart';
import 'package:electronics_store/features/address/feature/edit/bloc/address_edit_bloc.dart';
import 'package:electronics_store/features/auth/widgets/custom_text_form_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressEditFrom extends StatefulWidget {
  final AddressModel addressModel;
  const AddressEditFrom({super.key, required this.addressModel});

  @override
  State<AddressEditFrom> createState() => _AddressEditFromState();
}

class _AddressEditFromState extends State<AddressEditFrom> {
  late TextEditingController nameController;
  late TextEditingController cityController;
  late TextEditingController streetController;
  late TextEditingController phoneController;
  late String lat;
  late String long;

  @override
  void initState() {
    nameController = TextEditingController(text: widget.addressModel.name);
    cityController = TextEditingController(text: widget.addressModel.city);
    streetController = TextEditingController(text: widget.addressModel.street);
    phoneController = TextEditingController(text: widget.addressModel.phone);
    lat = widget.addressModel.lat.toString();
    long = widget.addressModel.long.toString();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    cityController.dispose();
    streetController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ListView(
        children: [
          CustomTextFormAuth(
            hintText: 'Name',
            labelText: 'Name',
            iconData: Icons.person,
            myController: nameController,
            valid: (val) {
              return null;
            },
          ),
          CustomTextFormAuth(
            hintText: 'City',
            labelText: 'City',
            iconData: Icons.location_city_rounded,
            myController: cityController,
            valid: (val) {
              return null;
            },
          ),
          CustomTextFormAuth(
            hintText: 'Street',
            labelText: 'Street',
            iconData: Icons.streetview_rounded,
            myController: streetController,
            valid: (val) {
              return null;
            },
          ),
          CustomTextFormAuth(
            hintText: 'Phone',
            labelText: 'Phone',
            iconData: Icons.phone_android_rounded,
            myController: phoneController,
            valid: (val) {
              return null;
            },
          ),
          CustomButton(
            text: "Edit",
            onPressed: () {
              FocusScope.of(context).unfocus();
              context.read<AddressEditBloc>().add(
                AddressEditEvent.submit(
                  addressId: widget.addressModel.id,
                  name: nameController.text,
                  city: cityController.text,
                  street: streetController.text,
                  lat: lat,
                  long: long,
                  phone: phoneController.text,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
