import 'package:json_annotation/json_annotation.dart';
part 'subjects_model.g.dart';

@JsonSerializable()
class SubjectsModel {
  SubjectsModel(this.credits, this.id, this.name, this.teacher);
  final int credits;
  final int id;
  final String name;
  final String teacher;

  factory SubjectsModel.fromJson(Map<String, dynamic> json) =>
      _$SubjectsModelFromJson(json);
  Map<String, dynamic> toJson() => _$SubjectsModelToJson(this);
}
