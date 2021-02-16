//这里是每个美食选项的数据
import 'package:favorcate/core/model/MealModel.dart';
import 'package:favorcate/core/service/meal_request.dart';
import 'package:favorcate/core/utils/log.dart';
import 'package:favorcate/core/viewmodel/filter_view_model.dart';

import 'package:flutter/material.dart';

class MealViewModel extends ChangeNotifier {
  List<MealModel> _meals = [];

  FilterViewModel _filterVM; //增加过滤

  List<MealModel> get meals {
//    这里的meals要取决于于filter_view_model里的数据
    return _meals.where((meal) {
//    这里进行过滤判断
      if (_filterVM.isGlutenFree && !meal.isGlutenFree) return false;
      if (_filterVM.isLactoseFree && !meal.isLactoseFree) return false;
      if (_filterVM.isVegetarian && !meal.isVegetarian) return false;
      if (_filterVM.isVegan && !meal.isVegan) return false;
      return true;
    }).toList();

//    return _meals;//旧
  }

//  更新过滤
  void updateFilters(FilterViewModel filterVM) {
    _filterVM = filterVM;
  }

  MealViewModel() {
    HYMealRequest.getMealData().then((res) {
//      print("打印meal模型实例$res");
      myLog('$res', StackTrace.current); //使用我们自己的打印封装方法
      _meals = res;
      notifyListeners();
    });
  }
}
