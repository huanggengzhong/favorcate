import 'package:favorcate/core/model/HYCategoryModel.dart';
import 'package:flutter/material.dart';
class HYMealScreen extends StatelessWidget {
  static const String routeName="/meal";
  @override
  Widget build(BuildContext context) {
//    获取参数
  final category=ModalRoute.of(context).settings.arguments as HYCategoryModel;
    return Scaffold(
      appBar: AppBar(
        title:Text(category.title) ,
      ),
      body: Center(child: Text(category.title),),
    );
  }
}
