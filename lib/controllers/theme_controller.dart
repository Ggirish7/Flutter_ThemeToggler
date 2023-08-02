import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  var isDark = false.obs;

  Future<void> changeThemeValue(bool newValue) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDark', newValue);
    isDark.value = newValue;
  }

  Future<bool?> currentTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? themeValue = prefs.getBool('isDark');
    return themeValue;
  }
}
