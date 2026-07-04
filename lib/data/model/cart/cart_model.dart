import 'package:electronics_store/data/model/item/item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
abstract class CartModel with _$CartModel {
  const CartModel._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CartModel({
    int? id,
    int? itemId,
    int? countItems,
    double? itemPrice,
    double? totalItemPrice,
    ItemModel? item,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}

@freezed
abstract class CartResponseModel with _$CartResponseModel {
  const CartResponseModel._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CartResponseModel({
    required List<CartModel> items,
    required double totalPrice,
    required int totalQuantity,
    status,
  }) = _CartResponseModel;

  factory CartResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CartResponseModelFromJson(json);
}
