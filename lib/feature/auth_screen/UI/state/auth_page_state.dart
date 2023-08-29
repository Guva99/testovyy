import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_page_state.freezed.dart';

@freezed
class AuthPageState with _$AuthPageState {
  const factory AuthPageState({
    required bool isSignIn,
    required bool isLoginWithEmail,
    required String token,
    required int code,
    required String phone,
    required String email,
  }) = _AuthPageState;
}

final authPageStateProvider = StateNotifierProvider<AuthPageStateHolder, AuthPageState>(
  (ref) => AuthPageStateHolder(),
);

class AuthPageStateHolder extends StateNotifier<AuthPageState> {
  AuthPageStateHolder()
      : super(
          const AuthPageState(
            isSignIn: false,
            isLoginWithEmail: false,
            phone: '',
            email: '',
            code: 0,
            token: '',
          ),
        );

  String get phoneNumber => state.phone;

  String get email => state.email;

  int get code => state.code;

  bool get isSignIn => state.isSignIn;

  void setPhone(String phone) => state = state.copyWith(
        phone: phone,
      );

  void setConfirmCode(int code) => state = state.copyWith(
        code: code,
      );

  void setEmail(String email) => state = state.copyWith(
        email: email,
      );

  void setValueIsLogin(bool value) => state = state.copyWith(
        isSignIn: value,
      );

  void isLoginWithEmail(bool value) => state = state.copyWith(
        isLoginWithEmail: value,
      );
}
