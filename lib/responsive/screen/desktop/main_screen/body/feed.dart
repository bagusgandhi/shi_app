import 'package:flutter/material.dart';

/*
  Pada body item Feed ini berisi widget container dengan ALignment center, 
  lalu di isi dengan widget Text()
 */

class FeedBodyDesktop extends StatelessWidget {
  const FeedBodyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'No Feed',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.grey,
        ),
      ),
    );
  }
}
