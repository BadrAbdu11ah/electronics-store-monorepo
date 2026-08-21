import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon_model.freezed.dart';
part 'coupon_model.g.dart';

@freezed
abstract class CouponModel with _$CouponModel {
  const CouponModel._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CouponModel({
    int? id,
    String? name,
    double? discount, // نسبة الخصم المئوية
  }) = _CouponModel;

  factory CouponModel.fromJson(Map<String, dynamic> json) =>
      _$CouponModelFromJson(json);
}
