import 'package:electronics_store/api_endpoints.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/api_service.dart';
import 'package:electronics_store/data/model/notifications/notification_model.dart';
import 'package:fpdart/fpdart.dart';

class NotificationsData {
  final ApiService api;

  NotificationsData(this.api);
  // 1. جلب العناوين
  Future<Either<Failure, List<NotificationModel>>> getNotifications() async {
    var response = await api.get(ApiEndpoints.notificationView);

    return response.fold((failure) => Left(failure), (data) {
      final List raw = data['data'] ?? [];
      if (raw.isEmpty) return Left(EmptyDataFailure(data['message']));
      final notifications = raw
          .map(
            (notification) => NotificationModel.fromJson(
              notification as Map<String, dynamic>,
            ),
          )
          .toList();

      return Right(notifications);
    });
  }
}
