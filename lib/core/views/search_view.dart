import 'package:flutter/cupertino.dart';

class SearchView with ChangeNotifier {
  String _viewType = 'block';
  String get viewType => _viewType;

  toggleView() {
    if (_viewType == 'block') {
      _viewType = 'tile';
      notifyListeners();
    } else if (_viewType == 'tile') {
      _viewType = 'large';
      notifyListeners();
    } else if (_viewType == 'large') {
      _viewType = 'block';
      notifyListeners();
    } else {
      _viewType = 'block';
      notifyListeners();
    }
  }
}
