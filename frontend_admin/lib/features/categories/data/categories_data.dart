import 'dart:async';
import 'dart:io';

import 'package:frontend_admin/api_endpoints.dart';
import 'package:frontend_admin/core/class/failure.dart';
import 'package:frontend_admin/core/services/api_service.dart';

import 'package:fpdart/fpdart.dart';
import 'package:frontend_admin/data/model/category/category_model.dart';

class CategoriesData {
  final ApiService api;
  CategoriesData(this.api);

  final _refreshViewCategoriesController = StreamController<void>.broadcast();
  Stream<void> get refreshView => _refreshViewCategoriesController.stream;

  // 1. جلب الأقسام
  Future<Either<Failure, List<CategoryModel>>> getCategories() async {
    var response = await api.get(ApiEndpoints.categoriesView);

    return response.fold((failure) => Left(failure), (data) {
      final List raw = data['data'] ?? [];
      if (raw.isEmpty) return Left(EmptyDataFailure(data['message']));
      final addresses = raw
          .map(
            (address) =>
                CategoryModel.fromJson(address as Map<String, dynamic>),
          )
          .toList();

      return Right(addresses);
    });
  }

  // 2. إضافة عنوان جديد
  Future<Either<Failure, String>> addCategory({
    required String name,
    required String nameAr,
    required String description,
    File? image,
  }) async {
    var response = await api.addRequestWithImageOne(
      ApiEndpoints.categoriesAdd,
      {"name": name, "name_ar": nameAr, "description": description},
      image: image,
      namerequest: "image",
    );

    return response.fold((failure) => Left(failure), (data) {
      _refreshViewCategoriesController.add(null);
      return Right(data["message"]);
    });
  }

  // 3. تعديل عنوان موجود
  Future<Either<Failure, String>> editCategory(
    int id, {
    required String name,
    required String nameAr,
    required String description,
    File? image,
  }) async {
    var response = await api.addRequestWithImageOne(
      ApiEndpoints.categoriesEdit(id),
      {"name": name, "name_ar": nameAr, "description": description},
      image: image,
      namerequest: "image",
    );
    return response.fold((failure) => Left(failure), (data) {
      _refreshViewCategoriesController.add(null);
      return Right(data["message"]);
    });
  }

  // 4. حذف عنوان
  Future<Either<Failure, String>> removeCategory(int id) async {
    var response = await api.delete(ApiEndpoints.categoriesRemove(id));
    return response.fold((failure) => Left(failure), (data) {
      return Right(data["message"]);
    });
  }
}
