import 'package:flutter/material.dart';

import 'package:favorcate/core/extension/int_extension.dart';
import 'package:favorcate/core/model/MealModel.dart';
class HYMealItem extends StatelessWidget {
  final MealModel _meal;
  HYMealItem(this._meal);


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.px),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.px)
      ),
      child: Column(
        children: <Widget>[
          buildBasicInfo(),
        ],
      ),
    );
  }

  //  方法
  Widget buildBasicInfo(){
    print(_meal.imageUrl);
    return Stack(
      children: <Widget>[
        Image.network(_meal.imageUrl,width: double.infinity,height: 250.px, fit: BoxFit.cover,  )
      ],
    );

  }

}
