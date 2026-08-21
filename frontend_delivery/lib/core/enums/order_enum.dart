import 'package:electronics_store_delivery/app_translations.dart';
import 'package:electronics_store_delivery/data/static/app_text.dart';
import 'package:flutter/widgets.dart';

enum PaymentMethod { cash, card }

enum DeliveryType { delivery, driveThru }
// 0 => pending => ينتظر موافقة الآدمن،
// 1 => approved_by_admin => تم قبول الطلب من قبل الآدمن،
// 2 => assigned_to_delivery => تم قبول الطلب من قبل المندوب،
// 3 => on_the_way => على الطريق
// 4 => received => تم الاستلام
// 5 => cancelled_by_admin => تم الالغاء من قبل الآدمن،

enum OrderStatus { pending, approve, prepare, delivered, cancelled }

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

      case OrderStatus.approve:
        return AppTranslations.translate(context, AppText.ordersAccepted);

      case OrderStatus.prepare:
        return AppTranslations.translate(context, AppText.ordersPreparing);

      case OrderStatus.delivered:
        return AppTranslations.translate(context, AppText.ordersDelivered);

      case OrderStatus.cancelled:
        return AppTranslations.translate(context, AppText.ordersCancelled);
    }
  }
}
