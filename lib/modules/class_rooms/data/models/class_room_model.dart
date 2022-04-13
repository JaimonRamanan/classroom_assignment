import 'package:json_annotation/json_annotation.dart';
part 'class_room_model.g.dart';

@JsonSerializable()
class ClassRoomModel {
  ClassRoomModel(this.id, this.layout, this.name, this.size);

  final int id;
  final String layout;
  final String name;
  final int size;

  factory ClassRoomModel.fromJson(Map<String, dynamic> json) =>
      _$ClassRoomModelFromJson(json);
  Map<String, dynamic> toJson() => _$ClassRoomModelToJson(this);
}
