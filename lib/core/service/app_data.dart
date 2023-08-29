import 'package:shared_preferences/shared_preferences.dart';
import 'package:testovoe_zadanie/core/utilities/shared_preference.dart';

class AuthAppData {
  static final AuthAppData _authAppData = AuthAppData._internal();

  bool isUserAuth = false;
  String userToken = '';

  factory AuthAppData() => _authAppData;

  // getLocalData() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   appData.isUserAuth = SharedPrefsRawProvider(prefs).getBool(SharedKeyWords.isAuthUser) ?? false;
  //   appData.userToken = SharedPrefsRawProvider(prefs).getString(SharedKeyWords.) ?? '';
  // }

  AuthAppData._internal();
}

final appData = AuthAppData();
