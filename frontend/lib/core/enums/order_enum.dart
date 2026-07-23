import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:flutter/widgets.dart';

enum PaymentMethod { cash, card }

enum DeliveryType { delivery, driveThru }

enum OrderStatus { waiting, preparing, archived }

extension PaymentMethodExtension on PaymentMethod {
  String text(BuildContext context) {
    switch (this) {
      case PaymentMethod.cash:
        return AppTranslations.translate(context, AppText.ordersPaymentCash);

      case PaymentMethod.card:
        return AppTranslations.translate(context, AppText.paymentCards);
    }
  }
}

extension DeliveryTypeExtension on DeliveryType {
  String text(BuildContext context) {
    switch (this) {
      case DeliveryType.delivery:
        return AppTranslations.translate(context, AppText.ordersDelivery);

      case DeliveryType.driveThru:
        return AppTranslations.translate(context, AppText.ordersDriveThru);
    }
  }
}

extension OrderStatusExtension on OrderStatus {
  String text(BuildContext context) {
    switch (this) {
      case OrderStatus.waiting:
        return AppTranslations.translate(context, AppText.ordersWaiting);

      case OrderStatus.preparing:
        return AppTranslations.translate(context, AppText.ordersPreparing);

      case OrderStatus.archived:
        return AppTranslations.translate(context, AppText.ordersArchived);
    }
  }
}
