// ignore_for_file: use_build_context_synchronously

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testovoe_zadanie/core/utilities/shared_preference.dart';
import 'package:testovoe_zadanie/core/widgets/global_snackbar_widget.dart';
import 'package:testovoe_zadanie/feature/app/router/app_path_route.dart';
import 'package:testovoe_zadanie/feature/auth_screen/UI/state/auth_page_state.dart';
import 'package:testovoe_zadanie/feature/auth_screen/domain/api/auth_api.dart';
import 'package:testovoe_zadanie/feature/auth_screen/domain/model/entities.dart';

final authManagerProvider = Provider(
  (ref) => AuthorizationManager(
    authPageState: ref.watch(authPageStateProvider.notifier),
    api: ref.watch(apiAuthServiceProvider),
  ),
);

class AuthorizationManager {
  AuthorizationManager({
    required this.authPageState,
    required this.api,
  });

  final AuthPageStateHolder authPageState;
  AuthApi api;

  Future<void> getCode({
    required String phone,
    required BuildContext context,
  }) async {
    try {
      final data = await api.getConfirmCode(
        textFieldForRegister: phone,
      );
      authPageState.setPhone(phone);
      authPageState.setConfirmCode(data.code);
      context.go(AppRoute.confirmPinRoute);
    } on DioError catch (e) {
      print(e.error);
      GlobalSnackBar.show(context, message: 'Неизвестная ошибка, попробуйте позже');
    }
  }

  Future<void> confirmUser({
    required String pinCode,
    required BuildContext context,
  }) async {
    try {
      final data = await api.authConfirmUser(
        confirmPin: pinCode,
        textPhone: authPageState.phoneNumber,
        context: context,
      );
      if (data != null) {
        context.go(AppRoute.homeScreenRoute);
        saveToCash(data);
        return;
      }
    } on DioError catch (e) {
      print('ERRORfsfs: ${e.response}');
    }
  }
  Future<void> confirmRegisterUser({
    required String pinCode,
    required BuildContext context,
  }) async {
    try {
      final data = await api.registerConfirmUser(
        confirmPin: pinCode,
         textPhone: authPageState.phoneNumber,
        textEmail: authPageState.email,
      );
      if (data != null) {
        context.go(AppRoute.homeScreenRoute);
        saveToCash(data);
        return;
      }
    } on DioError catch (e) {
      print('ERRORfsfs: ${e.response}');
    }
  }

  void saveToCash(UserClass data) async {
    final prefs = await SharedPreferences.getInstance();
    SharedPrefsRawProvider(prefs).setString(
      SharedKeyWords.tokenAccess,
      data.token!,
    );
    SharedPrefsRawProvider(prefs).setBool(
      SharedKeyWords.isAuthUser,
      true,
    );
    SharedPrefsRawProvider(prefs).setInt(
      SharedKeyWords.userId,
      data.user!.id,
    );
  }

  void setIsSignInValue(bool value) => authPageState.setValueIsLogin(value);

  void isLoginWithEmail(bool value) => authPageState.isLoginWithEmail(value);
}
