import 'package:electronics_store_delivery/core/services/app_service.dart';

dynamic translateDatabase(String columnen, String columnar) {
  AppService appService = AppService();
  if (appService.sharedPreferences.getString("lang") == "ar") {
    return columnar;
  }
  return columnen;
}
