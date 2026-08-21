import 'package:frontend_admin/app_translations.dart';
import 'package:frontend_admin/core/constant/app_color.dart';
import 'package:frontend_admin/core/enums/order_enum.dart';
import 'package:frontend_admin/data/model/order/order_model.dart';
import 'package:frontend_admin/data/static/app_text.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class CardOrdersAccepte extends StatelessWidget {
  final OrderModel order;
  final void Function() onDetails;
  final void Function() onApprove;
  const CardOrdersAccepte({
    super.key,
    required this.order,
    required this.onDetails,
    required this.onApprove,
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
                    fontSize: 12,
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
                MaterialButton(
                  color: AppColor.themeColor,
                  textColor: AppColor.bgColorOnBoarding,
                  textTheme: ButtonTextTheme.primary,
                  onPressed: onDetails,
                  child: Text(
                    AppTranslations.translate(context, AppText.details),
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                SizedBox(width: 10),
                MaterialButton(
                  color: AppColor.themeColor,
                  textColor: AppColor.bgColorOnBoarding,
                  textTheme: ButtonTextTheme.primary,
                  onPressed: onApprove,
                  child: Text(
                    AppTranslations.translate(context, AppText.approve),
                    style: TextStyle(fontSize: 12),
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
