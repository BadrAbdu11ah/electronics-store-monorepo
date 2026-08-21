import 'dart:async';

import 'package:electronics_store_delivery/api_endpoints.dart';
import 'package:electronics_store_delivery/core/class/failure.dart';
import 'package:electronics_store_delivery/core/services/api_service.dart';

import 'package:electronics_store_delivery/data/model/order/order_model.dart';
import 'package:electronics_store_delivery/data/model/order_details/order_details_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:geolocator/geolocator.dart';

StreamSubscription<Position>? positionStream;

// دالة للتحقق من الصلاحيات وتتبع الموقع بشكل آمن
Future<void> getCurrentLocation() async {
  // 1. التحقق من تفعيل خدمة الموقع على الجهاز
  bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    print("خدمة الموقع (GPS) غير مفعلة على الجهاز");
    return;
  }

  // 2. فحص حالة صلاحية الوصول للموقع
  LocationPermission permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    // 3. طلب الصلاحية من المستخدم في حال عدم منحها سابقاً
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      print("تم رفض منح إذن الوصول للموقع");
      return;
    }
  }

  // 4. التعامل مع حالة الرفض الدائم للصلاحية
  if (permission == LocationPermission.deniedForever) {
    print("إذن الموقع مرفوض بشكل دائم، يرجى تفعيله من إعدادات التطبيق");
    return;
  }

  // 5. الاستماع للتحديثات مع معالجة الاستثناءات لتجنب انهيار التطبيق
  positionStream = Geolocator.getPositionStream().listen(
    (Position? position) {
      print("==============================================");
      print(
        position == null
            ? 'Unknown'
            : '${position.latitude}, ${position.longitude}',
      );
    },
    onError: (error) {
      // إلغاء الاستثناءات عند حدوث خطأ في الـ Stream
      print("حدث خطأ أثناء تتبع الموقع: $error");
    },
  );
}

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

    return response.fold((failure) => Left(failure), (data) async {
      _approveOrderController.add(null);
      await getCurrentLocation();
      return Right(data['message']);
    });
  }

  // اتمام الطلب
  Future<Either<Failure, String>> doneDelivery(int orderId) async {
    var response = await api.post(ApiEndpoints.done(orderId), {});

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
