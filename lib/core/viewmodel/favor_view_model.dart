import 'package:favorcate/core/model/MealModel.dart';
import 'package:flutter/material.dart';

class FavorViewModel extends ChangeNotifier{
  List<MealModel> _favorMeals=[];

  List<MealModel> get favorMeals{
    return _favorMeals;
  }
//  添加收藏项方法
void addMeal(MealModel meal){
  _favorMeals.add(meal);
  notifyListeners();//通知更新
}
//删除通知项方法
void removeMeal(MealModel meal){
  _favorMeals.remove(meal);
  notifyListeners();
}
//多个地方用到,判断是否收藏方法
bool isFavor(MealModel meal){
    return _favorMeals.contains(meal);
}
//多个地方用到,通用切换方法
void handleMeal(MealModel meal){
    if(isFavor(meal)){
      removeMeal(meal);
    }else{
      addMeal(meal);
    }
}
}