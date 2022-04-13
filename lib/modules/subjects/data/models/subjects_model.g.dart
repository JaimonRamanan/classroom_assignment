// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subjects_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubjectsModel _$SubjectsModelFromJson(Map<String, dynamic> json) =>
    SubjectsModel(
      json['credits'] as int,
      json['id'] as int,
      json['name'] as String,
      json['teacher'] as String,
    );

Map<String, dynamic> _$SubjectsModelToJson(SubjectsModel instance) =>
    <String, dynamic>{
      'credits': instance.credits,
      'id': instance.id,
      'name': instance.name,
      'teacher': instance.teacher,
    };
