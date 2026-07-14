import 'package:electronics_store/core/shared/custom_button.dart';
import 'package:electronics_store/features/address/feature/add_details/bloc/address_add_details_bloc.dart';
import 'package:electronics_store/features/auth/widgets/custom_text_form_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddDetailsForm extends StatefulWidget {
  final String lat;
  final String long;
  const AddDetailsForm({super.key, required this.lat, required this.long});

  @override
  State<AddDetailsForm> createState() => _AddDetailsFormState();
}

class _AddDetailsFormState extends State<AddDetailsForm> {
  late TextEditingController nameController;
  late TextEditingController cityController;
  late TextEditingController streetController;
  late TextEditingController phoneController;

  @override
  void initState() {
    nameController = TextEditingController();
    cityController = TextEditingController();
    streetController = TextEditingController();
    phoneController = TextEditingController();
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
            text: "Add",
            onPressed: () {
              FocusScope.of(context).unfocus();
              context.read<AddressAddDetailsBloc>().add(
                AddressAddDetailsEvent.submit(
                  name: nameController.text,
                  city: cityController.text,
                  street: streetController.text,
                  lat: widget.lat,
                  long: widget.long,
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
