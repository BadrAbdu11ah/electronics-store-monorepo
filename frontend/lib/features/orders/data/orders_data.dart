import 'package:electronics_store/api_endpoints.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/api_service.dart';
import 'package:electronics_store/data/model/order/order_model.dart';
import 'package:fpdart/fpdart.dart'; // استدعاء المودل المطهر الصحيح

class OrdersData {
  final ApiService api;
  OrdersData(this.api);

  // جلب الطلبات قيد الانتظار للمستخدم الحالي
  Future<Either<Failure, List<OrderModel>>> getPendingOrders() async {
    var response = await api.get(ApiEndpoints.pending);

    return response.fold((failure) => Left(failure), (data) {
      List rawOrders = data['data'] ?? [];
      List<OrderModel> ordersList = rawOrders
          .map((e) => OrderModel.fromJson(e))
          .toList();
      return Right(ordersList);
    });
  }

  // جلب تفاصيل الطلب (منتجات + عنوان + معلومات الطلب)
  Future<Either<Failure, Map<String, dynamic>>> getOrderDetails(
    int orderId,
  ) async {
    // استدعاء رابط تفاصيل الطلب المحدث بشكل آمن
    var response = await api.get(ApiEndpoints.orderDetails(orderId));

    return response.fold((failure) => Left(failure), (data) {
      return Right(data);
    });
  }
}
