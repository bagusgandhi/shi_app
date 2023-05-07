import 'package:flutter/material.dart';

/*
  Pada body item Settings ini berisi widget container dengan ALignment center, 
  lalu didisik dengan widget Text()
 */

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'Settings',
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
