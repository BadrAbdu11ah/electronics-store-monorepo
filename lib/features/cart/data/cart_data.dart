import 'package:electronics_store/api_endpoints.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/api_service.dart';
import 'package:electronics_store/data/model/cart/cart_model.dart';
import 'package:electronics_store/data/model/coupon/coupon_model.dart';
import 'package:fpdart/fpdart.dart';

class CartData {
  final ApiService api;
  CartData(this.api);

  /*
   * 1. استعراض عناصر السلة الحالية بمودل جامع بالريال السعودي
   * GET /api/cart/view
   */
  Future<Either<Failure, CartResponseModel>> viewCart() async {
    final response = await api.get(ApiEndpoints.cartView);

    return response.fold((failure) => Left(failure), (data) {
      return Right(CartResponseModel.fromJson(data));
    });
  }

  /*
   * 2. التحقق من صحة الكوبون وصلاحيته قبل إتمام الشراء
   * POST /api/coupon/check
   */
  Future<Either<Failure, CouponModel>> checkCoupon(String couponName) async {
    final response = await api.post(ApiEndpoints.checkCoupon, {
      "name": couponName.trim(),
    });

    return response.fold((failure) => Left(failure), (data) {
      if (data['status'] == "failure") {
        return Left(ServerFailure(data['message'] ?? "الكوبون غير صالح"));
      }
      return Right(CouponModel.fromJson(data['data'] as Map<String, dynamic>));
    });
  }

  /*
   * 3. إضافة منتج إلى السلة أو زيادة كميته
   * POST /api/cart/add
   */
  Future<Either<Failure, String>> addCart(int itemId) async {
    final response = await api.post(ApiEndpoints.cartAdd, {"item_id": itemId});

    return response.fold(
      (failure) => Left(failure),
      (data) => Right(data['message'] ?? "تم إضافة العنصر بنجاح"),
    );
  }

  /*
   * 4. حذف منتج من السلة أو إنقاص كميته
   * POST /api/cart/remove
   */
  Future<Either<Failure, String>> removeCart(int itemId) async {
    final response = await api.post(ApiEndpoints.cartRemove, {
      "item_id": itemId,
    });

    return response.fold(
      (failure) => Left(failure),
      (data) => Right(data['message'] ?? "تم إزالة العنصر بنجاح"),
    );
  }

  /*
   * 4. حذف منتج من السلة أو إنقاص كميته
   * POST /api/cart/remove
   */
  Future<Either<Failure, String>> deleteCart(int itemId) async {
    final response = await api.post(ApiEndpoints.cartDelete, {
      "item_id": itemId,
    });

    return response.fold(
      (failure) => Left(failure),
      (data) => Right(data['message'] ?? "تم إزالة العنصر بنجاح"),
    );
  }

  /*
   * 5. جلب كمية منتج محدد داخل السلة حالياً لخدمة أزرار التحكم (+ / -)
   * GET /api/cart/count/{item_id}
   */
  Future<Either<Failure, int>> getCountCart(int itemId) async {
    final response = await api.get(ApiEndpoints.cartCount(itemId));

    return response.fold((failure) => Left(failure), (data) {
      if (data['status'] == "failure") {
        return Left(ServerFailure(data['message'] ?? "فشل في جلب كمية المنتج"));
      }
      final int count = int.tryParse(data['count'].toString()) ?? 0;
      return Right(count);
    });
  }
}
