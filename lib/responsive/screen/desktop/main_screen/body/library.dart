import 'package:flutter/material.dart';

/*
  Pada body item Library ini berisi widget container dengan ALignment center, 
  lalu di isi dengan widget Text()
 */

class LibraryBodyDesktop extends StatelessWidget {
  const LibraryBodyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'Your Music Library',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.grey,
        ),
      ),
    );
  }
}
