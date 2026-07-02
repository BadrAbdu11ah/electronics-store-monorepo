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
    int? count,
    String? expiredAt,
    int? discount,
    String? createdAt,
    String? updatedAt,
  }) = _CouponModel;

  bool isExpired() {
    if (expiredAt == null) return true;
    final expiryDate = DateTime.tryParse(expiredAt!);
    if (expiryDate == null) return true;
    return expiryDate.isBefore(DateTime.now());
  }

  factory CouponModel.fromJson(Map<String, dynamic> json) =>
      _$CouponModelFromJson(json);
}
