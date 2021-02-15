import 'dart:ui';

import 'package:favorcate/core/model/MealModel.dart';

import 'package:flutter/material.dart';
class HYDetailContent extends StatelessWidget {
  final MealModel _meal;
  HYDetailContent(this._meal);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          buildBannerImage(),

        ],
      ),
    );
  }
//  组件封装1.横幅图片
Widget buildBannerImage(){
    return Container(
      child: Image.network(_meal.imageUrl),
    );
}
//  组件封装2.制作材料
//  组件封装3.制作步骤

//
}
