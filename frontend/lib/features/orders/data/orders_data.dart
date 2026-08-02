import 'package:electronics_store/api_endpoints.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/api_service.dart';

import 'package:electronics_store/data/model/order/order_model.dart';
import 'package:electronics_store/data/model/order_details/order_details_model.dart';
import 'package:fpdart/fpdart.dart';

class OrdersData {
  final ApiService api;
  OrdersData(this.api);

  // جلب الطلبات قيد الانتظار للمستخدم الحالي
  Future<Either<Failure, List<OrderModel>>> getPendingOrders() async {
    var response = await api.get(ApiEndpoints.pending);

    return response.fold((failure) => Left(failure), (data) {
      List rawOrders = data['data'] ?? [];
      if (rawOrders.isEmpty) return Left(EmptyDataFailure(data['message']));
      List<OrderModel> ordersList = rawOrders
          .map((e) => OrderModel.fromJson(e))
          .toList();
      return Right(ordersList);
    });
  }

  Future<Either<Failure, List<OrderModel>>> getArchiveOrders() async {
    var response = await api.get(ApiEndpoints.archive);

    return response.fold((failure) => Left(failure), (data) {
      List rawOrders = data['data'] ?? [];
      if (rawOrders.isEmpty) return Left(EmptyDataFailure(data['message']));
      List<OrderModel> ordersList = rawOrders
          .map((e) => OrderModel.fromJson(e))
          .toList();
      return Right(ordersList);
    });
  }

  Future<Either<Failure, String>> rateOrder(
    int orderId,
    double rating,
    String comment,
  ) async {
    var response = await api.put(ApiEndpoints.rateOrder(orderId), {
      'rating': rating,
      'review': comment,
    });

    return response.fold(
      (failure) => Left(failure),
      (data) => Right(data['message']),
    );
  }

  // جلب تفاصيل الطلب (منتجات + عنوان + معلومات الطلب)
  Future<Either<Failure, OrderDetailsModel>> getOrderDetails(
    int orderId,
  ) async {
    // استدعاء رابط تفاصيل الطلب المحدث بشكل آمن
    var response = await api.get(ApiEndpoints.orderDetails(orderId));

    return response.fold((failure) => Left(failure), (data) {
      return Right(OrderDetailsModel.fromJson(data));
    });
  }

  //  حذف الطلب
  Future<Either<Failure, String>> deleteOrder(int orderId) async {
    var response = await api.delete(ApiEndpoints.orderDelete(orderId));
    return response.fold(
      (failure) => Left(failure),
      (data) => Right(data['message']),
    );
  }
}
