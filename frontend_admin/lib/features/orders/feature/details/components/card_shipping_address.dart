import 'package:frontend_admin/app_translations.dart';
import 'package:frontend_admin/core/constant/app_color.dart';
import 'package:frontend_admin/data/model/address/address_model.dart';
import 'package:frontend_admin/data/static/app_text.dart';
import 'package:flutter/material.dart';

class CardShippingAddress extends StatelessWidget {
  final AddressModel addressModel;
  const CardShippingAddress({super.key, required this.addressModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          AppTranslations.translate(context, AppText.shippingAddress),
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColor.themeBlackColor,
          ),
        ),
        subtitle: Text("${addressModel.city}, ${addressModel.street}"),
      ),
    );
  }
}
