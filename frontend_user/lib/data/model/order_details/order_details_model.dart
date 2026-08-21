import 'package:electronics_store/data/model/cart/cart_model.dart';
import 'package:electronics_store/data/model/order/order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_details_model.freezed.dart';
part 'order_details_model.g.dart';

@freezed
abstract class OrderDetailsModel with _$OrderDetailsModel {
  const OrderDetailsModel._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory OrderDetailsModel({
    required List<CartModel> cartItems,
    required OrderModel orderInfo,
  }) = _OrderDetailsModel;

  factory OrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsModelFromJson(json);
}
