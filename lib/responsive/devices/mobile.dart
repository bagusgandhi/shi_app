import 'package:flutter/material.dart';
import '../screen/mobile/main_screen/main_screen.dart';

/* 
jika aplikasi diakses dengan perangkat mobile yang lebar layarnya < 500
maka akan di return screen untuk device mobile dengan nama MainScreen, path nya ada di 
lib/screen/mobile/mobile_screen/main_screen.dart

*/

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen();
  }
}
