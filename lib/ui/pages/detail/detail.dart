import 'package:favorcate/core/model/MealModel.dart';
import 'package:favorcate/core/viewmodel/favor_view_model.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'detail_content.dart';

class HYDetailScreen extends StatelessWidget {
  static const String routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as MealModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: HYDetailContent(meal),
      floatingActionButton: Consumer<FavorViewModel>(
        builder: (ctx,favorVM,child){
//          根据收藏状态给不同的组件
        final iconData=favorVM.isFavor(meal)?Icons.favorite:Icons.favorite_border;
        final iconColor=favorVM.isFavor(meal)?Colors.red:Colors.black;
          return FloatingActionButton(
            child: Icon(iconData,color: iconColor,),
            onPressed: () {

            },
          );
        },
      ),
    );
  }
}
