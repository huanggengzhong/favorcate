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
          buildMakeTitle(context, "制作材料"),
          buildMakeMaterial(context),
          buildMakeTitle(context, "制作步骤"),
          buildMakeSteps(context),
        ],
      ),
    );
  }

//  组件封装1.横幅图片
  Widget buildBannerImage() {
    return Container(
      width: double.infinity,//解决开始宽度不一致问题
      child: Image.network(_meal.imageUrl),
    );
  }

//  组件封装2.制作材料
  Widget buildMakeMaterial(BuildContext context) {
//    myLog("${_meal.ingredients}",StackTrace.current);
    return buildMakeContent(
        context: context,
        child: ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            //bool 是否在范围内进行包裹
            physics: NeverScrollableScrollPhysics(),
            //不需要滚动
            itemCount: _meal.ingredients.length,
            itemBuilder: (ctx, index) {
              return Card(
                color: Theme.of(context).accentColor,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(_meal.ingredients[index]),
                ),
              );
            }));
  }

//  组件封装3.制作步骤
  Widget buildMakeSteps(BuildContext context) {
    return buildMakeContent(
        context: context,
//      separated是有下划线的ListView
        child: ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (ctx, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text("${index + 1}"),
                ),
                title: Text(_meal.steps[index]),
              );
            },
            separatorBuilder: (ctx, index) {
              return Divider();
            },
            itemCount: _meal.steps.length));
  }

//组件封装4.公共标题
  Widget buildMakeTitle(BuildContext context, String title) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.px),
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

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
