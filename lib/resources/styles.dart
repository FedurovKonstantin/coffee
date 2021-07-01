import 'package:flutter/material.dart';

class AppTheme {
  final ThemeData theme;

  AppTheme._(this.theme);

  factory AppTheme.activity() {
    return AppTheme._(
      ThemeData(
        primaryColor: Color(0xffDB524D),
        backgroundColor: Color(0xffDF645F),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.white,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
    );
  }
}
