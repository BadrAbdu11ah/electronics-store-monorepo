import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/core/enums/order_enum.dart';
import 'package:electronics_store/data/model/order/order_model.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class CardOrdersPending extends StatelessWidget {
  final OrderModel order;
  final void Function() onDetails;
  final void Function() onTracking;
  final void Function() onDelete;
  const CardOrdersPending({
    super.key,
    required this.order,
    required this.onTracking,
    required this.onDetails,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "# ${order.id}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Spacer(),
                Text(
                  Jiffy.parseFromDateTime(
                    DateTime.parse(order.createdAt!),
                  ).fromNow(),
                ),
              ],
            ),
            Divider(),
            Text(
              "${AppTranslations.translate(context, AppText.paymentMethod)} ${order.paymentMethodEnum.text(context)}",
            ),
            Text(
              "${AppTranslations.translate(context, AppText.orderType)} ${order.deliveryTypeEnum.text(context)}",
            ),
            Text(
              "${AppTranslations.translate(context, AppText.orderStatus)} ${order.orderStatusEnum.text(context)}",
            ),
            Divider(),
            Row(
              children: [
                Text(
                  "${AppTranslations.translate(context, AppText.totalPrice)}: ",
                  style: TextStyle(
                    color: AppColor.themeBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${order.totalPrice} \$",
                  style: TextStyle(
                    color: AppColor.redColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                if (order.orderStatusEnum == OrderStatus.pending)
                  IconButton(
                    onPressed: onDelete,
                    icon: Icon(Icons.delete, color: AppColor.redColor),
                  ),
                if (order.orderStatusEnum == OrderStatus.prepare)
                  MaterialButton(
                    color: AppColor.themeColor,
                    textColor: AppColor.bgColorOnBoarding,
                    textTheme: ButtonTextTheme.primary,
                    onPressed: onTracking,
                    child: Text(
                      AppTranslations.translate(
                        context,
                        AppText.orderTrackingTitle,
                      ),
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                SizedBox(width: 5),
                MaterialButton(
                  color: AppColor.themeColor,
                  textColor: AppColor.bgColorOnBoarding,
                  textTheme: ButtonTextTheme.primary,
                  onPressed: onDetails,
                  child: Text(
                    AppTranslations.translate(context, AppText.details),
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
