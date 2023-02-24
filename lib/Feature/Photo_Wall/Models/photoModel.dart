import 'package:json_annotation/json_annotation.dart';

part 'photoModel.g.dart';

@JsonSerializable()
class PhotoModel {
  List<PhotoData> p;

  PhotoModel(this.p);

  factory PhotoModel.fromJson(Map<String, dynamic> json) => _$PhotoModelFromJson(json);
  Map<String, dynamic> toJson() => _$PhotoModelToJson(this);

}


@JsonSerializable()
class PhotoData {
  int at;
  String id;

  PhotoData(this.at,this.id);

  factory PhotoData.fromJson(Map<String, dynamic> json) => _$PhotoDataFromJson(json);
  Map<String, dynamic> toJson() => _$PhotoDataToJson(this);

}