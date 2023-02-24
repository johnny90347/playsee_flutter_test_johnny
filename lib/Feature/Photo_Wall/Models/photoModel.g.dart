// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photoModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoModel _$PhotoModelFromJson(Map<String, dynamic> json) {
  return PhotoModel(
    (json['p'] as List<dynamic>)
        .map((e) => PhotoData.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$PhotoModelToJson(PhotoModel instance) =>
    <String, dynamic>{
      'p': instance.p,
    };

PhotoData _$PhotoDataFromJson(Map<String, dynamic> json) {
  return PhotoData(
    json['at'] as int,
    json['id'] as String,
  );
}

Map<String, dynamic> _$PhotoDataToJson(PhotoData instance) => <String, dynamic>{
      'at': instance.at,
      'id': instance.id,
    };
