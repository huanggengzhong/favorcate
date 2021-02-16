import 'package:favorcate/core/viewmodel/favor_view_model.dart';
import 'package:favorcate/ui/widgets/meal/meal_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavorContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<FavorViewModel>(builder: (ctx, favorVM, child) {
      if(favorVM.favorMeals.length==0){
        return Center(
          child: Text("还未收藏美食哦"),
        );
      }
      return ListView.builder(
        itemBuilder: (itemCtx, index) {
          return HYMealItem(favorVM.favorMeals[index]);
        },
        itemCount: favorVM.favorMeals.length,
      );
    });
  }
}
