import 'package:dio/dio.dart';
import 'package:testovoe_zadanie/core/service/api/api_path.dart';

class DioFactory {
  DioFactory();

  static Dio createDio() {
    print( AppApiPath.base);
    final dio = Dio(
      BaseOptions(
        baseUrl: AppApiPath.base,
        receiveTimeout: Duration(milliseconds: 10000),
        connectTimeout: Duration(milliseconds: 10000),
        sendTimeout: Duration(milliseconds: 10000),
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Access-Control-Allow-Credentials': 'true',
        },
      ),
    );
    return dio;
  }
}
