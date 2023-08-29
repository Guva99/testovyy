 import 'package:testovoe_zadanie/core/service/api/dio.dart';

class Api {
  final dio = DioFactory.createDio();

  factory Api() => _api;

  Api._internal();

  static final _api = Api._internal();
}
