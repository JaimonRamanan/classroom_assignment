import 'package:json_annotation/json_annotation.dart';
part 'student_model.g.dart';

@JsonSerializable()
class Studentmodel {
  Studentmodel(this.id, this.age, this.name, this.email);
  final int id;
  final int age;
  final String name;
  final String email;

  factory Studentmodel.fromJson(Map<String, dynamic> json) =>
      _$StudentmodelFromJson(json);
  Map<String, dynamic> toJson() => _$StudentmodelToJson(this);
}
