import 'package:electronics_store/api_endpoints.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/api_service.dart';
import 'package:electronics_store/data/model/categories_model.dart';
import 'package:electronics_store/data/model/items_model.dart';
import 'package:fpdart/fpdart.dart';

class HomeData {
  final ApiService api;
  HomeData(this.api);

  // جلب بيانات الصفحة الرئيسية
  Future<Either<Failure, Map<String, List>>> getData() async {
    var response = await api.get(ApiEndpoints.home);

    return response.fold((failure) => Left(failure), (data) {
      List rawCategories = data['categories'] ?? [];
      List<CategoriesModel> categoriesList = rawCategories
          .map((e) => CategoriesModel.fromJson(e))
          .toList();

      List rawItems = data['items'] ?? [];
      List<ItemsModel> itemsList = rawItems
          .map((e) => ItemsModel.fromJson(e))
          .toList();

      return Right({"categories": categoriesList, "items": itemsList});
    });
  }
}
