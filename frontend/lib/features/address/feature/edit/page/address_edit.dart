import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/data/model/address/address_model.dart';
import 'package:electronics_store/features/address/feature/add_details/bloc/address_add_details_bloc.dart';
import 'package:electronics_store/features/address/feature/edit/widgets/address_edit_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressEdit extends StatelessWidget {
  final AddressModel addressModel;
  const AddressEdit({super.key, required this.addressModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("تفاصيل العنوان")),
      body: BlocConsumer<AddressAddDetailsBloc, AddressAddDetailsState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (message) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(message)));
              Navigator.pushNamedAndRemoveUntil(
                context,
                AppRoute.homeScreen,
                (route) => false,
              );
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => AppLoadingWidget(),
            serverFilure: (message) => AppErrorWidget(message: message),
            orElse: () => AddressEditFrom(addressModel: addressModel),
          );
        },
      ),
    );
  }
}
