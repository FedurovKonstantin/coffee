// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) {
  return Task(
    estimatedPomidors: json['estimatedPomidors'] as int,
    isDone: json['isDone'] as bool,
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'title': instance.title,
      'isDone': instance.isDone,
      'estimatedPomidors': instance.estimatedPomidors,
    };
