import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/theme_controller.dart';
import 'package:flutter_application_1/models/themes.dart';
import 'package:flutter_application_1/views/homepage.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final controller = Get.put(ThemeController());
  SharedPreferences prefs = await SharedPreferences.getInstance();
  controller.isDark.value = prefs.getBool('isDark') ?? false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ThemeController>();
    return Obx(
      () => GetMaterialApp(
        theme: controller.isDark.value ? Themes.darkTheme : Themes.lightTheme,
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
