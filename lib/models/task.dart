import 'package:json_annotation/json_annotation.dart';
part 'task.g.dart';

@JsonSerializable()
class Task {
  String title;
  bool isDone;
  int estimatedPomidors;

  Task({
    required this.estimatedPomidors,
    this.isDone = false,
    required this.title,
  });

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
  Map<String, dynamic> toJson() => _$TaskToJson(this);
}
