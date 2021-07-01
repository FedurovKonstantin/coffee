// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_mod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PomodoroMod _$PomodoroModFromJson(Map<String, dynamic> json) {
  return PomodoroMod(
    mod: _$enumDecode(_$PomodoroModsEnumMap, json['mod']),
    duration: Duration(microseconds: json['duration'] as int),
  );
}

Map<String, dynamic> _$PomodoroModToJson(PomodoroMod instance) =>
    <String, dynamic>{
      'duration': instance.duration.inMicroseconds,
      'mod': _$PomodoroModsEnumMap[instance.mod],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$PomodoroModsEnumMap = {
  PomodoroMods.Activity: 'activity',
  PomodoroMods.ShortBreak: 'short_break',
  PomodoroMods.LongBreak: 'long_break',
};
