import 'package:electronics_store/api_endpoints.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/api_service.dart';
import 'package:electronics_store/data/model/item/item_model.dart';
import 'package:fpdart/fpdart.dart';

class ItemData {
  final ApiService api;
  ItemData(this.api);

  /*
   * 1. جلب المنتجات التابعة لقسم محدد (مع حالة المفضلة)
   * GET /api/items/category/{id}
   */
  Future<Either<Failure, List<ItemModel>>> getItems(int categoryId) async {
    final response = await api.get(ApiEndpoints.itemsByCategory(categoryId));

    return response.fold((failure) => Left(failure), (data) {
      final List rawData = data['data'] ?? [];
      final List<ItemModel> itemsList = rawData
          .map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
          .toList();

      return Right(itemsList);
    });
  }

  /*
   * 2. البحث عن المنتجات بالاسم (مع حساب السعر بعد الخصم وحالة المفضلة)
   * POST /api/items/search
   */
  Future<Either<Failure, List<ItemModel>>> searchItems(String query) async {
    final response = await api.post(ApiEndpoints.searchItems, {
      "search": query.trim(),
    });

    return response.fold((failure) => Left(failure), (data) {
      final List rawData = data['data'] ?? [];
      final List<ItemModel> itemsList = rawData
          .map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
          .toList();

      return Right(itemsList);
    });
  }
}
