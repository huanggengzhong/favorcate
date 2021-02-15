import 'package:favorcate/core/model/MealModel.dart';
import 'package:flutter/material.dart';
class HYDetailScreen extends StatelessWidget {
  static const String routeName="/detail";
  @override
  Widget build(BuildContext context) {
    final meal =ModalRoute.of(context).settings.arguments as MealModel;
    return Scaffold(
      appBar: AppBar(
        title: Text("todo"),
      ),
    );
  }
}
