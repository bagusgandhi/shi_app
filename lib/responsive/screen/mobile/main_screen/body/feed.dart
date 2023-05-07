import 'package:flutter/material.dart';

/*
  Pada body item Feed ini berisi widget container dengan ALignment center, 
  lalu didisik dengan widget Text()
 */

class FeedBody extends StatelessWidget {
  const FeedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'No Feed',
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
