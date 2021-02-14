//这里是meal请求单独文件
import 'http_request.dart';

class HYMealRequest {
  static void getMealData() async{
    //1.发送网络请求
    final url="/api/meal";
   final result=await HttpRequest.request(url);
   print("下面这里打印meal请求数据");
   print(result);
//   2.json转模型

  }
}