import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/data/model/address/address_model.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:flutter/material.dart';

class CardMapLater extends StatelessWidget {
  final AddressModel addressModel;
  const CardMapLater({super.key, required this.addressModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 300,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppTranslations.translate(context, AppText.mapLater),
              style: TextStyle(
                fontSize: 16,
                color: AppColor.themeBlackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "${AppTranslations.translate(context, AppText.currentLocation)} : ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Lat: ${addressModel.lat}, Long: ${addressModel.long}',
              style: TextStyle(
                fontSize: 16,
                color: AppColor.themeBlackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
