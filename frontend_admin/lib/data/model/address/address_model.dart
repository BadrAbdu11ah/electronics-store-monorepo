import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
abstract class AddressModel with _$AddressModel {
  const AddressModel._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AddressModel({
    int? id,
    int? userId,
    String? name,
    String? city,
    String? street,
    double? lat,
    double? long,
    String? phone,
    String? createdAt,
    String? updatedAt,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}
