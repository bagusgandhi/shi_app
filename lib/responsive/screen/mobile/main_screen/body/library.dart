import 'package:flutter/material.dart';

/*
  Pada body item Library ini berisi widget container dengan ALignment center, 
  lalu didisik dengan widget Text()
 */

class LibraryBody extends StatelessWidget {
  const LibraryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'Your Music Library',
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
