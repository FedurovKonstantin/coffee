part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class ThemeSwitched extends ThemeEvent {
  final AppTheme theme;

  ThemeSwitched({
    required this.theme,
  });
}
