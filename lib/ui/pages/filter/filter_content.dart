import 'package:favorcate/core/extension/int_extension.dart';
import 'package:favorcate/core/viewmodel/filter_view_model.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FilterContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[buildChoiceTitle(context), buildChoiceContent()],
    );
  }

//  标题组件
  Widget buildChoiceTitle(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.px),
      alignment: Alignment.center,
      child: Text(
        "请选择过滤条件",
        style: Theme.of(context)
            .textTheme
            .display3
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

//内容组件
  Widget buildChoiceContent() {
    return Expanded(
      child: Consumer<FilterViewModel>(builder: (ctx,filterVM,child){
        return ListView(
          children: <Widget>[
            buildListTile("无谷蛋白", "展示无谷蛋白食物",filterVM.isGlutenFree,(value){
              filterVM.isGlutenFree=value;
            }),
            buildListTile("不含乳糖", "展示不含乳糖食物",filterVM.isLactoseFree,(value){
              filterVM.isLactoseFree=value;
            }),
            buildListTile("素食主义", "展示素食食物",filterVM.isVegetarian,(value){
              filterVM.isVegetarian=value;
            }),
            buildListTile("严格素食主义", "展示严格素食食物",filterVM.isVegan,(value){
              filterVM.isVegan=value;
            }),
//      // 无谷蛋白
//      bool _isGlutenFree = false;
//      // 有无乳糖
//      bool _isLactoseFree = false;
//      // 素食主义
//      bool _isVegetarian = false;
//      // 严格素食主义
//      bool _isVegan = false;

          ],
        );
      }),
    );
  }

//每项组件
  Widget buildListTile(String title, String subtitle ,bool value,Function onChange) {
    return ListTile(
        title: Text(title,style: TextStyle(fontSize: 18.px,color: Colors.black)),
        subtitle: Text(subtitle), //二级标题
        trailing: Switch(
          value: value,
          onChanged: onChange,
        ));
  }
}
