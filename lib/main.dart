import 'package:favorcate/core/viewmodel/filter_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app.dart';
import 'core/viewmodel/favor_view_model.dart';
import 'core/viewmodel/meal_view_model.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
//          MealViewModel每项数据要依赖于FilterViewModel过滤后的数据,下面是依赖的写法
          ChangeNotifierProvider(
            create: (ctx) => FilterViewModel(),
          ),
          ChangeNotifierProxyProvider<FilterViewModel,MealViewModel>(
            create: (ctx) => MealViewModel(),
            update:(ctx,filterVM,mealVM){
            //调用MealViewModel写好的过滤方法
              mealVM.updateFilters(filterVM);
              return mealVM;
            },
          ),
          ChangeNotifierProvider(
            create: (ctx) => FavorViewModel(),
          ),
                  ],
        child: MyApp(),
      )
  );
}
