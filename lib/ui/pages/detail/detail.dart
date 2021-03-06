import 'package:favorcate/core/model/MealModel.dart';
import 'package:favorcate/core/viewmodel/favor_view_model.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'detail_content.dart';
import 'detail_floating_button.dart';

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
      floatingActionButton: HYDetailFloatingButton(meal),
    );
  }
}
