
import 'package:dio/dio.dart';
import 'package:netease/common/key/global_key.dart';

class HttpUtil {

  /// global dio object
  static Dio dio;

  /// default options
  static const String API_PREFIX = 'https://novel.dkvirus.com/api/v1';
  static const int CONNECT_TIMEOUT = 10000;
  static const int RECEIVE_TIMEOUT = 3000;

  /// http request methods
  static const String GET = 'get';
  static const String POST = 'post';
  static const String PUT = 'put';
  static const String PATCH = 'patch';
  static const String DELETE = 'delete';

  /// request method
  static Future<Map> request (
      String url,
      { data, method }) async {

    data = data ?? {};
    method = method ?? 'GET';

    /// restful 请求处理
    data.forEach((key, value) {
      if (url.indexOf(key) != -1) {
        url = url.replaceAll(':$key', value.toString());
      }
    });

    /// 打印请求相关信息：请求地址、请求方式、请求参数
    print('请求地址：【' + method + '  ' + url + '】');
    print('请求参数：' + data.toString());

    Dio dio = createInstance();
    var result;

    try {
      Response response = await dio.request(url, data: data, options: new Options(method: method));

      /// 打印响应相关信息
      print('响应数据：' + response.toString());

      // 响应码
      int code = response.statusCode;

      if (code >= 200 && code < 300) {
        result = response.data;
        return result;
      } else if (code == 401){
        // 跳转到登录页面
        Global.navigatorKey.currentState.pushNamedAndRemoveUntil("/login", (route) => route == null);
      } else if (code == 404) {
        // 跳转到404页面
        Global.navigatorKey.currentState.pushNamedAndRemoveUntil("/not_found", (route) => route == null);
      }

    } on DioError catch (e) {
      /// 打印请求失败相关信息
      print('请求出错：' + e.toString());
    }

    return result;
  }

  /// 创建 dio 实例对象
  static Dio createInstance () {
    if (dio == null) {
      /// 全局属性：请求前缀、连接超时时间、响应超时时间
      BaseOptions options = new BaseOptions(
        baseUrl: API_PREFIX,
        connectTimeout: CONNECT_TIMEOUT,
        receiveTimeout: RECEIVE_TIMEOUT,
      );

      dio = new Dio(options);
    }

    return dio;
  }

  /// 清空 dio 对象
  static clear () {
    dio = null;
  }

}