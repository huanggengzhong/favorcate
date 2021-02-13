import 'package:flutter/cupertino.dart';

class HYCategoryModel {
  String id;
  String title;
  String color;
//  服务器数据十六进制转普通颜色的技巧
  dynamic cColor;


  HYCategoryModel({this.id, this.title, this.color,this.cColor});

  HYCategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    color = json['color'];
//    1.十六进制转普通颜色方法
 final colorInt= int.parse(color,radix: 16);
// 2.将透明度加进去
  cColor=Color(colorInt | 0xFF000000);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['color'] = this.color;
    return data;
  }
}
