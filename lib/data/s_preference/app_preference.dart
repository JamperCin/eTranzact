import 'package:shared_preferences/shared_preferences.dart';

class AppPreference {
  void init() {
    SharedPreferences.getInstance().then((value) {});
  }
}
