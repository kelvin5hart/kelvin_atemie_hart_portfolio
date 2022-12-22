import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(theme: blueTheme()));

  void switchTheme() {
    // If the current theme is the blue theme, switch to the blue dark theme
    if (state.theme == blueTheme()) {
      emit(ThemeState(theme: blueDarkTheme()));
    }
    // Otherwise, switch to the blue theme
    else {
      emit(ThemeState(theme: blueTheme()));
    }
  }
}

