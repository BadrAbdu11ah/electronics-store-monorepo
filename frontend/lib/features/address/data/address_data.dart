import 'package:electronics_store/api_endpoints.dart';
import 'package:electronics_store/core/class/failure.dart';
import 'package:electronics_store/core/services/api_service.dart';
import 'package:electronics_store/data/model/address/address_model.dart';
import 'package:fpdart/fpdart.dart';

class AddressData {
  final ApiService api;

  AddressData(this.api);

  // 1. جلب العناوين
  Future<Either<Failure, List<AddressModel>>> getAddresses() async {
    var response = await api.get(ApiEndpoints.addressView);

    return response.fold((failure) => Left(failure), (data) {
      final List raw = data['data'] ?? [];
      if (raw.isEmpty) return Left(EmptyDataFailure(data['message']));
      final addresses = raw
          .map(
            (address) => AddressModel.fromJson(address as Map<String, dynamic>),
          )
          .toList();

      return Right(addresses);
    });
  }

  // 2. إضافة عنوان جديد
  Future<Either<Failure, String>> addAddress(Map<String, dynamic> data) async {
    var response = await api.post(ApiEndpoints.addressAdd, data);

    return response.fold(
      (failure) => Left(failure),
      (data) => Right(data["message"]),
    );
  }

  // 3. تعديل عنوان موجود
  Future<Either<Failure, Map>> editAddress(
    int addressId,
    Map<String, dynamic> data,
  ) async {
    return await api.put(ApiEndpoints.addressEdit(addressId), data);
  }

  // 4. حذف عنوان
  Future<Either<Failure, String>> removeAddress(int addressId) async {
    var response = await api.delete(ApiEndpoints.addressRemove(addressId));
    return response.fold(
      (failure) => Left(failure),
      (data) => Right(data['message']),
    );
  }
}
