import 'package:favorcate/core/model/MealModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:collection/collection.dart';

import 'package:favorcate/ui/widgets/meal/meal_item.dart';
import 'package:favorcate/core/viewmodel/meal_view_model.dart';
import 'package:favorcate/core/model/HYCategoryModel.dart';

// Selector方式,减少重新构建
class HYMealContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category =
    ModalRoute
        .of(context)
        .settings
        .arguments as HYCategoryModel;
    return Selector<MealViewModel, List<MealModel>>(
      selector: (ctx, mealVM) {
        return mealVM.meals.where((element) =>
            element.categories.contains(category.id)).toList();
      },//这里过滤
      shouldRebuild: (pre, next) => !ListEquality().equals(pre, next),
      //ListEquality是判断两个列表是否相等
      builder: (ctx, meals, child) {//重新builder
        return ListView.builder(
            itemCount: meals.length,
            itemBuilder: (ctx, index) {
              return HYMealItem(meals[index]);
            }
        );
      },
    );
  }
}
//  Consumer的方式,缺点:build会多次执行
//}class HYMealContent extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    final category =
//        ModalRoute.of(context).settings.arguments as HYCategoryModel;
//    return Consumer<MealViewModel>(
//      builder: (ctx, mealVM, child) {
//        final meals=mealVM.meals.where((element) => element.categories.contains(category.id)).toList();
//
//        return ListView.builder(itemBuilder:(ctx,index){
//          return ListTile(
//            title: Text(meals[index].title),
//          );
//        }    ,itemCount: meals.length,);
//      },
//    );
//  }
//}
//}
