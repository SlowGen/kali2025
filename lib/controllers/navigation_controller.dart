import 'package:flutter/material.dart';
import 'package:kali2025/definitions/enums.dart';

class NavigationController extends ChangeNotifier {
  NavigationController();

  DisplayPage _currentPage = DisplayPage.main;
  DisplayPage get currentPage => _currentPage;
  void setCurrentPage(DisplayPage page) {
    _currentPage = page;
    notifyListeners();
  }
}
