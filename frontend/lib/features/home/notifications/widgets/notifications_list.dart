import 'package:electronics_store/core/constant/app_color.dart';
import 'package:electronics_store/data/model/notifications/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class NotificationsList extends StatelessWidget {
  final List<NotificationModel> notifications;
  const NotificationsList({super.key, required this.notifications});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        notification.title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        Jiffy.parseFromDateTime(
                          DateTime.parse(notification.createdAt!),
                        ).fromNow(),
                        style: TextStyle(
                          color: AppColor.redColor,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    notification.body,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
