import 'package:arzan/ui/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class ScreenChanger with ChangeNotifier {
  Widget mScreen;
  ScreenChanger({this.mScreen = const HomePage()});
  Widget get mainScreen => mScreen;
  setMainScreen(Widget widget) {
    mScreen = widget;
    notifyListeners();
  }
}
