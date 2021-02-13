import 'package:favorcate/core/router/route.dart';
import 'package:favorcate/ui/shared/size_fit.dart';
import 'package:flutter/material.dart';
import './ui/shared/app_theme.dart';
import 'ui/shared/size_fit.dart';



class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //  屏幕适配做一下初始化
    HYSizeFit.initialize();
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


