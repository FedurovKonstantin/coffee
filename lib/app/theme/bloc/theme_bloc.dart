import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coffee/models/pomodoro_mod.dart';
import 'package:coffee/resources/styles.dart';
import 'package:equatable/equatable.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(
          ThemeState(
            theme: AppTheme(
              mod: PomodoroMods.Activity,
            ),
          ),
        );

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    if (event is ThemeSwitched) {
      yield ThemeState(theme: event.theme);
    }
  }
}
