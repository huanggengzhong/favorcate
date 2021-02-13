
//这里是主页页面配置
import 'package:favorcate/ui/pages/favor/favor.dart';
import 'package:favorcate/ui/pages/home/home.dart';
import 'package:flutter/material.dart';
final List<Widget> pages=[
  HYHomeScreen(),
  HYFavorScreen(),
];
final List<BottomNavigationBarItem> items=[
  BottomNavigationBarItem(
    title: Text("首页"),
    icon:Icon(Icons.home)
  ),BottomNavigationBarItem(
    title: Text("收藏"),
    icon:Icon(Icons.star)
  ),
];
