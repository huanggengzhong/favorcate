import 'package:favorcate/core/model/MealModel.dart';
import 'package:favorcate/core/service/meal_request.dart';
import 'package:flutter/material.dart';

class MealViewModel extends ChangeNotifier {
  List<MealModel> _meals = [];
  List<MealModel> get meals{
    return _meals;
  }
  MealViewModel() {
    HYMealRequest.getMealData().then((res) {
      print("打印meal模型实例$res");
      _meals = res;
      notifyListeners();
    });
  }
}
