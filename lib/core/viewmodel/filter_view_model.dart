//这里是四个不同状态的bool值
import 'package:flutter/material.dart';

class FilterViewModel extends ChangeNotifier {
  // 无谷蛋白
  bool _isGlutenFree = false;

// 有无乳糖
  bool _isLactoseFree = false;

  // 素食主义
  bool _isVegetarian = false;

  // 严格素食主义
  bool _isVegan = false;

//  下面的是批量生产的get和set方法
  bool get isGlutenFree => _isGlutenFree;

  set isGlutenFree(bool value) {
    _isGlutenFree = value;
    notifyListeners();
  }

  bool get isVegan => _isVegan;

  set isVegan(bool value) {
    _isVegan = value;
    notifyListeners();
  }

  bool get isVegetarian => _isVegetarian;

  set isVegetarian(bool value) {
    _isVegetarian = value;
    notifyListeners();
  }

  bool get isLactoseFree => _isLactoseFree;

  set isLactoseFree(bool value) {
    _isLactoseFree = value;
    notifyListeners();
  }
}
