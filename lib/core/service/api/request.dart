import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testovoe_zadanie/core/service/api/api_singltone.dart';
import 'package:testovoe_zadanie/core/utilities/runnable_state.dart';

enum RequestType { GET, POST, DELETE, PUT }

final apiResponse = Provider(
  (ref) => ResponseApi(
    runnableStateHolder: ref.watch(runnableStateProvider.notifier),
  ),
);

class ResponseApi {
  ResponseApi({
    required this.runnableStateHolder,
  });

  final RunnableStateHolder runnableStateHolder;

  Future<Response<Map<String, dynamic>>> response({
    required RequestType requestType,
    Object? data,
    Options? options,
    required String path,
  }) async {
    runnableStateHolder.runCircular(isRunning: true);
    Response<Map<String, dynamic>> response;
    try {
      switch (requestType) {
        case RequestType.GET:
          response = await Api().dio.get<Map<String, dynamic>>(
                path,
                data: data,
                options: options,
              );
          print('API:$path://${response.data}');
          runnableStateHolder.runCircular(isRunning: false);
          return response;
        case RequestType.POST:
          response = await Api().dio.post<Map<String, dynamic>>(
                path,
                data: data,
                options: options,
              );
          runnableStateHolder.runCircular(isRunning: false);
          print('API:$path://${response.data}');
          return response;
        case RequestType.DELETE:
          response = await Api().dio.delete<Map<String, dynamic>>(
                path,
                data: data,
                options: options,
              );
          runnableStateHolder.runCircular(isRunning: false);
          print('API:$path://${response.data}');
          return response;
        case RequestType.PUT:
          response = await Api().dio.put<Map<String, dynamic>>(
                path,
                data: data,
                options: options,
              );
          print('API:$path://${response.data}');
          runnableStateHolder.runCircular(isRunning: false);
          return response;
      }
    } on DioError catch (e) {
      runnableStateHolder.runCircular(isRunning: false, error: e.response?.data);
      // throw ServerException();
      return Response<Map<String, dynamic>>(
        data: Map<String, dynamic>(),
        requestOptions: RequestOptions(path: path),
        statusCode: e.response?.statusCode,
        statusMessage: e.response?.statusMessage,
      );
    }
  }
}
