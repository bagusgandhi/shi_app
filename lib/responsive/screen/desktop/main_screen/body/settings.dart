import 'package:flutter/material.dart';

/*
  Pada body item Search ini berisi widget container dengan ALignment center, 
  lalu di isi dengan widget Text()
 */

class SettingsBodyDesktop extends StatelessWidget {
  const SettingsBodyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'Settings',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.grey,
        ),
      ),
    );
  }
}
