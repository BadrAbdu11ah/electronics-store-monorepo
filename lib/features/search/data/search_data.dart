import 'package:electronics_store/api_endpoints.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/api_service.dart';
import 'package:electronics_store/data/model/items_model.dart';
import 'package:fpdart/fpdart.dart';

class SearchData {
  final ApiService api;
  SearchData(this.api);

  // البحث عن المنتجات
  Future<Either<Failure, List<ItemsModel>>> searchResults(String search) async {
    var response = await api.post(ApiEndpoints.search, {"search": search});
    return response.fold((Failure failure) => Left(failure), (
      Map<String, dynamic> data,
    ) {
      return Right(data['data']!.map((e) => ItemsModel.fromJson(e)).toList());
    });
  }
}
