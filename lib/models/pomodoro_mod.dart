import 'package:json_annotation/json_annotation.dart';
part 'pomodoro_mod.g.dart';

@JsonSerializable()
class PomodoroMod {
  final Duration duration;
  final PomodoroMods mod;

  PomodoroMod({
    required this.mod,
    required this.duration,
  });

  factory PomodoroMod.fromJson(Map<String, dynamic> json) =>
      _$PomodoroModFromJson(json);
  Map<String, dynamic> toJson() => _$PomodoroModToJson(this);
}

enum PomodoroMods {
  @JsonValue("activity")
  Activity,
  @JsonValue("short_break")
  ShortBreak,
  @JsonValue("long_break")
  LongBreak,
}
