// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SettingModel _$SettingModelFromJson(Map<String, dynamic> json) =>
    _SettingModel(
      id: (json['id'] as num).toInt(),
      titleHomeAr: json['title_home_ar'] as String,
      bodyHomeAr: json['body_home_ar'] as String,
      titleHomeEn: json['title_home_en'] as String,
      bodyHomeEn: json['body_home_en'] as String,
    );

Map<String, dynamic> _$SettingModelToJson(_SettingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title_home_ar': instance.titleHomeAr,
      'body_home_ar': instance.bodyHomeAr,
      'title_home_en': instance.titleHomeEn,
      'body_home_en': instance.bodyHomeEn,
    };
