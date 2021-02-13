//json解析
import 'dart:convert';
import 'package:favorcate/core/model/HYCategoryModel.dart';
import 'package:flutter/services.dart';

class JsonParse {
  static Future<List<HYCategoryModel>> getCategoryData() async {
//     1.加載json文件
    //https://flutterchina.club/assets-and-images/有說明
    final jsonString = await rootBundle.loadString("assets/json/category.json");
//  2.转成Map/List
    final result = json.decode(jsonString); //和encode互转
    //3.将Map中的内容转成一个个对象
    final resultList = result['category'];
    List<HYCategoryModel> categories = [];
    for (var json in resultList) {
      categories.add(HYCategoryModel.fromJson(json));
    }
    return categories;
  }
}
