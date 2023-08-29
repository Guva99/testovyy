// ignore_for_file: use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testovoe_zadanie/core/service/api/api_path.dart';
import 'package:testovoe_zadanie/core/service/api/request.dart';
import 'package:testovoe_zadanie/core/utilities/runnable_state.dart';
import 'package:testovoe_zadanie/core/widgets/global_snackbar_widget.dart';
import 'package:testovoe_zadanie/feature/auth_screen/domain/model/entities.dart';

final apiAuthServiceProvider = Provider(
  (ref) => AuthApi(runnableStateHolder: ref.watch(runnableStateProvider.notifier), apiResponse: ref.watch(apiResponse)),
);

class AuthApi {
  AuthApi({
    required this.runnableStateHolder,
    required this.apiResponse,
  });

  final RunnableStateHolder runnableStateHolder;
  final ResponseApi apiResponse;

  Future<Code> getConfirmCode({
    String? textFieldForRegister,
  }) async {
    final data = await apiResponse.response(
      requestType: RequestType.POST,
      path: AppApiPath.getCode,
      data: {
        'phone': textFieldForRegister,
      },
    );
    return Code.fromJson(data.data!);
  }

  Future<UserClass?> authConfirmUser({
    required String textPhone,
    required String confirmPin,
    required BuildContext context,
  }) async {
    final data = await apiResponse.response(
      requestType: RequestType.POST,
      path: AppApiPath.confirmAuthUser,
      data: {
        'phone': textPhone,
        'terms': true,
        'code': confirmPin,
      },
    );
    print('STATUS CODE: ${data.statusCode}');
    if (data.statusCode == 302) {
      GlobalSnackBar.show(context, message: 'Не правильно введен пин код ');
      return null;
    }
    if (data.statusCode == 500) {
      GlobalSnackBar.show(context, message: 'Ошибка сервера, попробуйте чуть позже');
      return null;
    }
    if (data.statusCode == 404) {
      GlobalSnackBar.show(context, message: 'пользователь $textPhone не существует ');
      return null;
    }

    return UserClass.fromJson(data.data!);
  }

  Future<UserClass?> registerConfirmUser({
    required String textPhone,
    required String textEmail,
    required String confirmPin,
  }) async {
    ///CHECK REGISTER EMAIL OR PHONE NUMBER
    final data = await apiResponse.response(
      requestType: RequestType.POST,
      path: AppApiPath.confirmRegisterUser,
      data: {
        'phone': textPhone,
        'terms': true,
        'code': confirmPin,
      },
    );
    return UserClass.fromJson(data.data!);
  }
}
