import 'package:electronics_store/api_endpoints.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/api_service.dart';
import 'package:fpdart/fpdart.dart';

class CheckoutData {
  final ApiService api;
  CheckoutData(this.api);

  // إرسال بيانات الطلب
  Future<Either<Failure, Map>> checkout(Map<String, dynamic> data) async {
    var response = await api.post(ApiEndpoints.checkout, data);

    return response.fold((failure) => Left(failure), (r) => Right(r));
  }
}
