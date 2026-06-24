import 'package:electronics_store/api_endpoints.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/api_service.dart';
import 'package:electronics_store/data/model/items_model.dart';
import 'package:fpdart/fpdart.dart';

class ItemsData {
  final ApiService api;
  ItemsData(this.api);

  Future<Either<Failure, List<ItemsModel>>> getItems(int categoryId) async {
    var response = await api.get(ApiEndpoints.itemsByCategory(categoryId));

    return response.fold((failure) => Left(failure), (data) {
      List rawData = data['data'] ?? [];
      List<ItemsModel> itemsList = rawData
          .map((e) => ItemsModel.fromJson(e))
          .toList();

      return Right(itemsList);
    });
  }
}
