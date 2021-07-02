import 'package:coffee/models/pomodoro_mod.dart';
import 'package:flutter/material.dart';

class AppTheme {
  late final ThemeData theme;

  AppTheme({required PomodoroMods mod}) {
    if (mod == PomodoroMods.Activity) {
      theme = ThemeData(
        primaryColor: Color(0xffDB524D),
        accentColor: Colors.white,
        scaffoldBackgroundColor: Color(0xffDF645F),
        backgroundColor: Color(0xffDF645F),
      );
    } else if (mod == PomodoroMods.LongBreak) {
      theme = ThemeData(
        primaryColor: Color(0xff437EA8),
        accentColor: Colors.white,
        scaffoldBackgroundColor: Color(0xff568BB1),
        backgroundColor: Color(0xff568BB1),
      );
    } else {
      theme = ThemeData(
        primaryColor: Color(0xff468E91),
        accentColor: Colors.white,
        scaffoldBackgroundColor: Color(0xff599A9C),
        backgroundColor: Color(0xff599A9C),
      );
    }
  }
}
