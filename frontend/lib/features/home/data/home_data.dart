import 'package:electronics_store/api_endpoints.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/api_service.dart';
import 'package:electronics_store/data/model/category/category_model.dart';
import 'package:electronics_store/data/model/item/item_model.dart';
import 'package:electronics_store/data/model/setting/setting_model.dart';
import 'package:fpdart/fpdart.dart';

class HomeData {
  final ApiService api;
  HomeData(this.api);

  /*
   * جلب بيانات الصفحة الرئيسية (الأقسام وأحدث العروض)
   */
  Future<Either<Failure, Map<String, dynamic>>> getData() async {
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

      final Map<String, dynamic> rawSettings = data['settings'] ?? {};
      final SettingModel settings = SettingModel.fromJson(rawSettings);

      return Right({
        "categories": categoriesList,
        "items": itemsList,
        "settings": settings,
      });
    });
  }

  Future<Either<Failure, List<ItemModel>>> getOffers() async {
    final response = await api.get(ApiEndpoints.offers);

    return response.fold((failure) => Left(failure), (data) {
      final List rawData = data['data'] ?? [];

      final List<ItemModel> itemsList = rawData
          .map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
          .toList();

      if (itemsList.isEmpty) {
        return Left(EmptyDataFailure(data['message'] ?? 'لا توجد عروض'));
      }

      return Right(itemsList);
    });
  }
}
