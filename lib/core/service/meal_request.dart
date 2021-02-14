//这里是meal请求单独文件
import 'package:favorcate/core/model/MealModel.dart';

import 'http_request.dart';

class HYMealRequest {
  static Future<List<MealModel>> getMealData() async {
    //1.发送网络请求
    final url = "/api/meal";
    final result = await HttpRequest.request(url);
//   2.json转模型
    final mealArray = result['meal'];
    List<MealModel> meals = [];
    for (var json in mealArray) {
      meals.add(MealModel.fromJson(json));
    }
    return meals;
  }
}
