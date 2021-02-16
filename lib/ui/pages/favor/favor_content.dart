import 'package:favorcate/core/viewmodel/favor_view_model.dart';
import 'package:favorcate/ui/widgets/meal/meal_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class FavorContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<FavorViewModel>(builder: (ctx,favorVM,child){
      return ListView.builder(itemBuilder: (itemCtx,index){
        return HYMealItem(favorVM.favorMeals[index]);
      },
      itemCount: favorVM.favorMeals.length,);
    });
  }
}
