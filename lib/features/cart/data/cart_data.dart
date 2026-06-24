import 'package:electronics_store/api_endpoints.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/api_service.dart';
import 'package:electronics_store/data/model/cart_model.dart';
import 'package:electronics_store/data/model/coupon_model.dart';
import 'package:fpdart/fpdart.dart';

class CartData {
  final ApiService api;
  CartData(this.api);

  Future<Either<Failure, Map<String, dynamic>>> viewCart() async {
    var response = await api.get(ApiEndpoints.cartView);

    return response.fold((failure) => Left(failure), (data) {
      // if (data['status'] == "failure") return Left(failure);

      List rawData = data['data'] ?? [];
      List<CartModel> cartList = rawData
          .map((e) => CartModel.fromJson(e))
          .toList();

      double totalPrice = double.tryParse(data['totalprice'].toString()) ?? 0.0;
      int countAll = int.tryParse(data['countall'].toString()) ?? 0;

      return Right({
        "items": cartList,
        "totalprice": totalPrice,
        "countall": countAll,
      });
    });
  }

  Future<Either<Failure, CouponModel>> checkCoupon(String couponName) async {
    var response = await api.get(ApiEndpoints.checkCoupon(couponName));

    return response.fold((failure) => Left(failure), (data) {
      // if (data['status'] == "failure") {
      //   return Left(failure);
      // }

      return Right(CouponModel.fromJson(data['data']));
    });
  }

  Future<Either<Failure, String>> addCart(int itemId) async {
    var response = await api.post(ApiEndpoints.cartAdd(itemId), {});
    return response.fold((failure) => Left(failure), (data) {
      return Right(data['message']);
    });
  }

  Future<Either<Failure, String>> removeCart(int itemId) async {
    var response = await api.delete(ApiEndpoints.cartRemove(itemId));
    return response.fold((failure) => Left(failure), (data) {
      return Right(data['message']);
    });
  }

  // جلب عدد العناصر لمنتج محدد وتفاصيله
  Future<Either<Failure, int>> getCountCart(int itemId) async {
    var response = await api.get(ApiEndpoints.cartCount(itemId));

    return response.fold((failure) => Left(failure), (data) {
      if (data['status'] == "failure") {
        return Left(ServerFailure(data['message']));
      }
      // استخراج العدد مباشرة وتحويله لـ int
      int count = data['count'] ?? 0;
      return Right(count);
    });
  }
}
