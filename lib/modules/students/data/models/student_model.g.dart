// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Studentmodel _$StudentmodelFromJson(Map<String, dynamic> json) => Studentmodel(
      json['id'] as int,
      json['age'] as int,
      json['name'] as String,
      json['email'] as String,
    );

Map<String, dynamic> _$StudentmodelToJson(Studentmodel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'age': instance.age,
      'name': instance.name,
      'email': instance.email,
    };
