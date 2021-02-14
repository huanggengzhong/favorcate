import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app.dart';
import 'core/viewmodel/meal_view_model.dart';

void main() {
  runApp(
//    Provider:ViewModel/Provider/Consumer(Selector)
      ChangeNotifierProvider(
//        共享的数据
    create: (ctx) => MealViewModel(),
    child: MyApp(),
  ));
}
