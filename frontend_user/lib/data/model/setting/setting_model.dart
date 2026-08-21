import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_model.freezed.dart';
part 'setting_model.g.dart';

@freezed
abstract class SettingModel with _$SettingModel {
  const SettingModel._();
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SettingModel({
    required int id,
    required String titleHomeAr,
    required String bodyHomeAr,
    required String titleHomeEn,
    required String bodyHomeEn,
  }) = _SettingModel;

  factory SettingModel.fromJson(Map<String, dynamic> json) =>
      _$SettingModelFromJson(json);
}
