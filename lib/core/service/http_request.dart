import 'package:dio/dio.dart';

import 'config.dart';

class HttpRequest {
// 创建基本配置
  static final BaseOptions options = BaseOptions(
      baseUrl: HttpConfig.baseUrl, connectTimeout: HttpConfig.timeOut);

// 创建dio
  static final Dio dio = Dio(options);

  static Future<T> request<T>(String url,
      {String method = 'get',
      Map<String, dynamic> params,
      Interceptor inter}) async {
    //最后一个参数是拦截器
    //1.创建单独配置
    final option = Options(method: method);

    // 添加拦截器:如果有传递过来就单个增加,同时添加自己的全部拦截器
    Interceptor dInter =
        InterceptorsWrapper(onRequest: (RequestOptions options) {
//      print("这里拦截请求");
      return options;
    }, onResponse: (Response response) {
//      print('这里拦截响应');
      return response;
    }, onError: (dynamic error) {
      print("这里拦截了错误");
      return error;
    });
    List<Interceptor> inters = [dInter];
    if (inter != null) {
      inters.add(inter);
    }
    dio.interceptors.addAll(inters);

    //2.发送网络请求,同时增加dio异常捕捉
    try {
      Response response =
          await dio.request(url, queryParameters: params, options: option);
      return response.data;
    } on DioError catch (e) {
      return Future.error(e);
    }
  }
}
