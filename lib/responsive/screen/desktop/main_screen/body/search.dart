import 'package:flutter/material.dart';

/*
  Pada body item Search ini berisi widget container dengan ALignment center, 
  lalu di isi dengan widget Text()
 */

class SearchBodyDesktop extends StatelessWidget {
  const SearchBodyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'Search Some..',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.grey,
        ),
      ),
    );
  }
}
