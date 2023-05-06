import 'package:flutter/material.dart';
import 'package:shi_app/responsive/devices/desktop.dart';
import 'package:shi_app/responsive/devices/mobile.dart';
import 'package:shi_app/responsive/responsive_layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /*
    Pada main.dart return MaterialApp Widget yang dimana pada home akan mengarah ke WIdget ResponsiveLayout()
    ResponsiveLayout terdapat 2 parametedr yang harus diisi, yaitu mobile dan desktop.  
  */

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobile: MobileScaffold(),
        desktop: DesktopScaffold(),
      ),
    );
  }
}
