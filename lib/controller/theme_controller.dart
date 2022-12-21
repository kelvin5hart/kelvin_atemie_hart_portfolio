import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class ThemeController extends GetxController {
  // Define a variable to hold the current theme data object
  final _currentTheme = blueTheme().obs;

  // Define a variable to hold the current theme state (light or dark)
  final _currentThemeState = 'light'.obs;

  // Define getters to access the current theme data object and state
  ThemeData get currentTheme => _currentTheme.value;
  String get currentThemeState => _currentThemeState.value;

  // Define a method to update the current theme data object and state
  void switchTheme() {
    // If the current theme is the blue theme, switch to the blue dark theme
    if (_currentTheme.value == blueTheme()) {
      _currentTheme.value = blueDarkTheme();
      _currentThemeState.value = 'dark';
    }
    // Otherwise, switch to the blue theme
    else {
      _currentTheme.value = blueTheme();
      _currentThemeState.value = 'light';
    }
    update();
  }
}


