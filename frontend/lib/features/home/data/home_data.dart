import 'package:electronics_store/api_endpoints.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/api_service.dart';
import 'package:electronics_store/data/model/category/category_model.dart';
import 'package:electronics_store/data/model/item/item_model.dart';
import 'package:fpdart/fpdart.dart';

class HomeData {
  final ApiService api;
  HomeData(this.api);

  /*
   * جلب بيانات الصفحة الرئيسية (الأقسام وأحدث العروض)
   */
  Future<Either<Failure, Map<String, List<dynamic>>>> getData() async {
    final response = await api.get(ApiEndpoints.home);

    return response.fold((failure) => Left(failure), (data) {
      final List rawCategories = data['categories'] ?? [];
      final List<CategoryModel> categoriesList = rawCategories
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList();

      final List rawItems = data['items'] ?? [];
      final List<ItemModel> itemsList = rawItems
          .map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
          .toList();

      return Right({"categories": categoriesList, "items": itemsList});
    });
  }
}
