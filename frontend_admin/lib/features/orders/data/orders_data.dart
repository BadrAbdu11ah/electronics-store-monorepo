import 'dart:async';

import 'package:frontend_admin/api_endpoints.dart';
import 'package:frontend_admin/core/class/failure.dart';
import 'package:frontend_admin/core/services/api_service.dart';

import 'package:frontend_admin/data/model/order/order_model.dart';
import 'package:frontend_admin/data/model/order_details/order_details_model.dart';
import 'package:fpdart/fpdart.dart';

class OrdersData {
  final ApiService api;
  OrdersData(this.api);

  final _approveOrderController = StreamController<void>.broadcast();
  Stream<void> get onApproveOrder => _approveOrderController.stream;

  final _doneDeliveryController = StreamController<void>.broadcast();
  Stream<void> get onDoneDelivery => _doneDeliveryController.stream;

  // جلب الطلبات قيد الانتظار
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

  // قبول الطلب
  Future<Either<Failure, String>> approveOrder(int orderId) async {
    var response = await api.post(ApiEndpoints.approve(orderId), {});

    return response.fold((failure) => Left(failure), (data) {
      _approveOrderController.add(null);
      return Right(data['message']);
    });
  }

  // اتمام الطلب
  Future<Either<Failure, String>> rejectOrder(int orderId) async {
    var response = await api.post(ApiEndpoints.reject(orderId), {});

    return response.fold((failure) => Left(failure), (data) {
      _doneDeliveryController.add(null);
      return Right(data['message']);
    });
  }

  // جلب الطلبات المقبولة للمستخدم الحالي
  Future<Either<Failure, List<OrderModel>>> getAcceptedOrders() async {
    var response = await api.get(ApiEndpoints.accepted);

    return response.fold((failure) => Left(failure), (data) {
      List rawOrders = data['data'] ?? [];
      if (rawOrders.isEmpty) return Left(EmptyDataFailure(data['message']));
      List<OrderModel> ordersList = rawOrders
          .map((e) => OrderModel.fromJson(e))
          .toList();
      return Right(ordersList);
    });
  }

  // جلب الطلبات المكتملة للمستخدم الحالي
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
}
