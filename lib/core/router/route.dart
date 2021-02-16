//这里是路由
import 'package:favorcate/core/utils/log.dart';
import 'package:favorcate/ui/pages/detail/detail.dart';
import 'package:favorcate/ui/pages/filter/filter.dart';
import 'package:favorcate/ui/pages/main/main.dart';
import 'package:favorcate/ui/pages/meal/meal.dart';

import 'package:flutter/material.dart';

class HYRouter {
//  启动页面
  static final String initialRoute = HYMainScreen.routeName;

  static final Map<String, WidgetBuilder> routes = {
    HYMainScreen.routeName: (ctx) => HYMainScreen(),
    HYMealScreen.routeName: (ctx) => HYMealScreen(),
    HYDetailScreen.routeName: (ctx) => HYDetailScreen(),
//    FilterScreen.routeName: (ctx) => FilterScreen(),//这里是直接跳转的默认路由
  };

//  这里扩展路由,这里可以监听路由
  static final RouteFactory generateRoute = (settings) {
    if(settings.name==FilterScreen.routeName){
      myLog('这是可以实现自己想要的路由拦截',StackTrace.current);
      return MaterialPageRoute(
          builder:(ctx){
            return FilterScreen();
          },
        fullscreenDialog: true//是否全屏对话框,是的话左上角有关闭按钮
      );
    }
    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}
