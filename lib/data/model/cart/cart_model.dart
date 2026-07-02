import 'package:electronics_store/data/model/item/item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
abstract class CartModel with _$CartModel {
  const CartModel._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CartModel({
    ItemModel? item,
    int? countItems,
    double? itemPrice,
    double? totalItemPrice,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}

@freezed
abstract class CartResponseModel with _$CartResponseModel {
  const CartResponseModel._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CartResponseModel({
    @JsonKey(name: 'data') required List<CartModel> items,
    required double totalPrice,
    required int totalQuantity,
  }) = _CartResponseModel;

  factory CartResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CartResponseModelFromJson(json);
}
