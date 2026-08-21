import 'package:frontend_admin/app_translations.dart';
import 'package:frontend_admin/data/static/app_text.dart';
import 'package:flutter/widgets.dart';

enum PaymentMethod { cash, card }

enum DeliveryType { delivery, driveThru }

enum OrderStatus {
  pending,
  rejected,
  accepted,
  prepare,
  delivered,
  done,
  cancelled,
}

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
      case OrderStatus.pending:
        return AppTranslations.translate(context, AppText.ordersWaiting);

      case OrderStatus.rejected:
        return AppTranslations.translate(context, AppText.ordersRejected);

      case OrderStatus.accepted:
        return AppTranslations.translate(context, AppText.ordersAccepted);

      case OrderStatus.prepare:
        return AppTranslations.translate(context, AppText.ordersPreparing);

      case OrderStatus.delivered:
        return AppTranslations.translate(context, AppText.ordersDelivered);

      case OrderStatus.done:
        return AppTranslations.translate(context, AppText.ordersDone);

      case OrderStatus.cancelled:
        return AppTranslations.translate(context, AppText.ordersCancelled);
    }
  }
}
