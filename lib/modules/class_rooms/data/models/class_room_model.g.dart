// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassRoomModel _$ClassRoomModelFromJson(Map<String, dynamic> json) =>
    ClassRoomModel(
      json['id'] as int,
      json['layout'] as String,
      json['name'] as String,
      json['size'] as int,
      json['subject'] as int?,
    );

Map<String, dynamic> _$ClassRoomModelToJson(ClassRoomModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'layout': instance.layout,
      'name': instance.name,
      'size': instance.size,
      'subject': instance.subject,
    };
