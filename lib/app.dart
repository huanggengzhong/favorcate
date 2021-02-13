import 'package:favorcate/core/router/route.dart';
import 'package:flutter/material.dart';
import './ui/shared/app_theme.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "美食广场",
//      主题
      theme:HYAppTheme.norTheme,
//      路由
      initialRoute: HYRouter.initialRoute,//初始页面
      routes: HYRouter.routes,//路由映射
      onGenerateRoute: HYRouter.generateRoute,
      onUnknownRoute: HYRouter.unknownRoute,

    );
  }
}


