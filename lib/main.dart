import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app.dart';
import 'core/viewmodel/favor_view_model.dart';
import 'core/viewmodel/meal_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx)=>MealViewModel(),
        ),
        ChangeNotifierProvider(
          create: (ctx)=>FavorViewModel(),
        ),
      ],
      child: MyApp(),
    )
  );
}
