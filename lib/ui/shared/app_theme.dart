//这里进行主题设置
import 'package:flutter/material.dart';

class HYAppTheme {
//  1.共有属性
  static const double bodyFontSize = 14;
  static const double smallFontSize = 16;
  static const double normalFontSize = 20;
  static const double largeFontSize = 24;

  static final Color norTextColors = Colors.red;
  static final Color darkTextColors = Colors.green;

  //2.普通模式
  static final ThemeData norTheme = ThemeData(
      primarySwatch: Colors.pink,
      canvasColor: Color.fromRGBO(255, 254, 222, 1), //页面背景颜色
      textTheme: TextTheme(
          body1: TextStyle(fontSize: bodyFontSize),
          display1: TextStyle(
            fontSize: smallFontSize,
          ),
          display2: TextStyle(
            fontSize: normalFontSize,
          ),
          display3: TextStyle(
            fontSize: largeFontSize,
          )));

//3.暗黑模式
  static final ThemeData darkTheme = ThemeData(
      primarySwatch: Colors.grey,
      textTheme: TextTheme(
          body1: TextStyle(fontSize: normalFontSize, color: darkTextColors)));
}
