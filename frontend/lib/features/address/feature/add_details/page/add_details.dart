import 'package:electronics_store/core/constant/app_route.dart';
import 'package:electronics_store/core/shared/handling_data_view.dart';
import 'package:electronics_store/features/address/feature/add_details/bloc/address_add_details_bloc.dart';
import 'package:electronics_store/features/address/feature/add_details/widgets/add_details_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddDetails extends StatelessWidget {
  final String lat;
  final String long;
  const AddDetails({super.key, required this.lat, required this.long});

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
            orElse: () => AddDetailsForm(lat: lat, long: long),
          );
        },
      ),
    );
  }
}
