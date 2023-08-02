import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/theme_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final themeController = Get.find<ThemeController>();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("Theme Changer"),
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: Transform.scale(
            scale: 2,
            child: Obx(
              () => Switch(
                value: themeController.isDark.value,
                onChanged: (newValue) {
                  themeController.changeThemeValue(newValue);
                },
                activeColor: Theme.of(context).colorScheme.secondary,
                inactiveTrackColor: Theme.of(context).colorScheme.tertiary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
