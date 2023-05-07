import 'package:flutter/material.dart';

/*
  Pada body item Search ini berisi widget container dengan ALignment center, 
  lalu didisik dengan widget Text()
 */

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'Search Some..',
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
