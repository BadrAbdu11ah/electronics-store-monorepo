import 'package:electronics_store/app_translations.dart';
import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/core/enums/order_enum.dart';
import 'package:electronics_store/data/model/order/order_model.dart';
import 'package:electronics_store/data/static/app_text.dart';
import 'package:electronics_store/features/orders/feature/archive/bloc/archive_bloc.dart';
import 'package:electronics_store/features/orders/feature/archive/components/order_rating_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jiffy/jiffy.dart';

class CardOrdersArchive extends StatelessWidget {
  final OrderModel order;
  final void Function() onDetails;
  const CardOrdersArchive({
    super.key,
    required this.order,
    required this.onDetails,
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
                MaterialButton(
                  color: AppColor.themeColor,
                  textColor: AppColor.bgColorOnBoarding,
                  textTheme: ButtonTextTheme.primary,
                  onPressed: onDetails,
                  child: Text(
                    AppTranslations.translate(context, AppText.details),
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                SizedBox(width: 10),
                if (order.rating == null)
                  MaterialButton(
                    color: Colors.amber,
                    textColor: Colors.white,
                    textTheme: ButtonTextTheme.primary,
                    onPressed: () {
                      showRatingDialog(
                        context,
                        onSubmitted: (rating, comment) {
                          context.read<ArchiveBloc>().add(
                            ArchiveEvent.rateOrder(
                              orderId: order.id!,
                              rating: rating,
                              comment: comment,
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      AppTranslations.translate(context, AppText.rate),
                      style: TextStyle(fontSize: 14, color: Colors.white),
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
