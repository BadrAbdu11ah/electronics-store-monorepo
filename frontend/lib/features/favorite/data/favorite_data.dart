import 'package:electronics_store/api_endpoints.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/api_service.dart';
import 'package:electronics_store/data/model/item/item_model.dart';
import 'package:fpdart/fpdart.dart';

class FavoriteData {
  final ApiService api;
  FavoriteData(this.api);

  // 1. جلب قائمة المفضلة
  Future<Either<Failure, List<ItemModel>>> viewFavorite() async {
    var response = await api.get(ApiEndpoints.favoriteView);

    return response.fold((failure) => Left(failure), (data) {
      List rawData = data['data'] ?? [];
      // تحويل البيانات إلى قائمة من ItemsModel
      List<ItemModel> favoriteList = rawData
          .map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
          .toList();
      if (favoriteList.isEmpty) {
        return Left(EmptyDataFailure(data['message']));
      }

      return Right(favoriteList);
    });
  }

  // 2. إضافة منتج (إعادة حالة فقط)
  Future<Either<Failure, String>> addFavorite(int itemId) async {
    var response = await api.post(ApiEndpoints.favoriteAdd, {
      "item_id": itemId,
    });
    return response.fold((failure) => Left(failure), (data) {
      if (data['status'] == "success") return Right(data['message']);
      return Left(ServerFailure(data['message']));
    });
  }

  // 3. حذف منتج (إعادة حالة فقط)
  Future<Either<Failure, String>> removeFavorite(int itemId) async {
    var response = await api.delete(ApiEndpoints.favoriteRemove(itemId));
    return response.fold(
      (failure) => Left(failure),
      (data) => Right(data['message']),
    );
  }
}
