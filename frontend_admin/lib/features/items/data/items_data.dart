import 'dart:async';
import 'dart:io';

import 'package:frontend_admin/api_endpoints.dart';
import 'package:frontend_admin/core/class/failure.dart';
import 'package:frontend_admin/core/services/api_service.dart';

import 'package:fpdart/fpdart.dart';
import 'package:frontend_admin/data/model/item/item_model.dart';

class ItemsData {
  final ApiService api;
  ItemsData(this.api);

  final _refreshViewItemsController = StreamController<void>.broadcast();
  Stream<void> get refreshView => _refreshViewItemsController.stream;

  // 1. جلب الأصناف
  Future<Either<Failure, List<ItemModel>>> getItems() async {
    var response = await api.get(ApiEndpoints.itemsView);

    return response.fold((failure) => Left(failure), (data) {
      final List raw = data['data'] ?? [];
      if (raw.isEmpty) return Left(EmptyDataFailure(data['message']));
      final items = raw
          .map((item) => ItemModel.fromJson(item as Map<String, dynamic>))
          .toList();

      return Right(items);
    });
  }

  // 2. إضافة صنف جديد
  Future<Either<Failure, String>> addItem({
    required String name,
    required String nameAr,
    required String description,
    required String descriptionAr,
    required int count,
    required int active,
    required double price,
    required double discount,
    required int deliveryTime,
    required int categoryId,
    File? image,
  }) async {
    var response = await api.addRequestWithImageOne(
      ApiEndpoints.itemsAdd,
      {
        "name": name,
        "name_ar": nameAr,
        "desc": description,
        "desc_ar": descriptionAr,
        "count": count,
        "active": active,
        "price": price,
        "discount": discount,
        "delivery_time": deliveryTime,
        "category_id": categoryId,
      },
      image: image,
      namerequest: "image",
    );

    return response.fold((failure) => Left(failure), (data) {
      _refreshViewItemsController.add(null);
      return Right(data["message"]);
    });
  }

  // 3. تعديل عنوان موجود
  Future<Either<Failure, String>> editItem(
    int id, {
    required String name,
    required String nameAr,
    required String description,
    required String descriptionAr,
    required int count,
    required int active,
    required double price,
    required double discount,
    required int deliveryTime,
    required int categoryId,
    File? image,
  }) async {
    var response = await api.addRequestWithImageOne(
      ApiEndpoints.itemsEdit(id),
      {
        "name": name,
        "name_ar": nameAr,
        "desc": description,
        "desc_ar": descriptionAr,
        "count": count,
        "active": active,
        "price": price,
        "discount": discount,
        "delivery_time": deliveryTime,
        "category_id": categoryId,
      },
      image: image,
      namerequest: "image",
    );
    return response.fold((failure) => Left(failure), (data) {
      _refreshViewItemsController.add(null);
      return Right(data["message"]);
    });
  }

  // 4. حذف عنوان
  Future<Either<Failure, String>> removeItem(int id) async {
    var response = await api.delete(ApiEndpoints.itemsRemove(id));
    return response.fold((failure) => Left(failure), (data) {
      return Right(data["message"]);
    });
  }
}
