import 'package:flutter/material.dart';
import 'package:shi_app/responsive/screen/desktop/main_screen/main_screen.dart';

/* 
jika aplikasi diakses dengan perangkat yang lebar layarnya 500 hingga selebihnya
maka akan di return screen untuk device desktop dengan nama MainScreen, path nya ada di 
lib/screen/desktop/desktop_screen/main_screen.dart
*/

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen();
  }
}
