import 'package:favorcate/core/model/MealModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:favorcate/core/viewmodel/meal_view_model.dart';
import 'package:favorcate/core/model/HYCategoryModel.dart';

class HYMealContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category =
        ModalRoute.of(context).settings.arguments as HYCategoryModel;
    return Consumer<MealViewModel>(
      builder: (ctx, mealVM, child) {
        final meals=mealVM.meals.where((element) => element.categories.contains(category.id)).toList();
        
        return ListView.builder(itemBuilder:(ctx,index){
          return ListTile(
            title: Text(meals[index].title),
          );
        }    ,itemCount: meals.length,);
      },
    );
  }
}
