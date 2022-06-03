import 'package:flutter/cupertino.dart';

class ThemeService extends ChangeNotifier {
  bool isDarkModeOn = false;

  void toggleTheme() {
    this.isDarkModeOn = !this.isDarkModeOn;
    notifyListeners();
  }
}
