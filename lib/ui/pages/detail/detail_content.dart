import 'package:favorcate/core/extension/int_extension.dart';

import 'package:favorcate/core/model/MealModel.dart';
import 'package:favorcate/core/utils/log.dart';

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
          buildMakeMaterial(context),
        ],
      ),
    );
  }

//  组件封装1.横幅图片
  Widget buildBannerImage() {
    return Container(
      child: Image.network(_meal.imageUrl),
    );
  }

//  组件封装2.制作材料
  Widget buildMakeMaterial(BuildContext context) {
//    myLog("${_meal.ingredients}",StackTrace.current);
    return buildMakeContent(
        context: context,
        child:Text("haha"));
//        child: ListView.builder(
//            itemCount: _meal.ingredients.length,
//            itemBuilder: (ctx, index) {
//              return Card(
//                child: Padding(
//                  child: Text("haha"),
//                ),
//              );
//            }));
  }

//  组件封装3.制作步骤

//组件封装4.公共标题
//组件封装5.公共内容
  Widget buildMakeContent({BuildContext context, Widget child}) {
    return Container(
      width: MediaQuery.of(context).size.width - 30.px,
      padding: EdgeInsets.all(8.px),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.px)),
      child: child,
    );
  }
}
