import 'package:flutter/material.dart';

/*
  ini adalah tampilan screen ketika tombol upgrade pada appbar di klik
  karena sudah berbeda screen dengan main screen, buat scaffol widget lagi
  lalu isi dengan Container yang didalamnya berisi column.
  didalam column terdiri dari Image, dan Text
*/

class UpgradeScreen extends StatelessWidget {
  const UpgradeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.purpleAccent,
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    maxRadius: 14,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Image.network(
                      'https://i1.sndcdn.com/avatars-7OeqzUtGCKkSS8XQ-gREwqg-t240x240.jpg',
                    ),
                    const Text(
                      "What's next in music is first on CloudSound",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        height: 1.6,
                      ),
                    ),
                    const Text(
                      "Upgrading your CloudSound account is an excellent way to take your music career to the next level.",
                      style: TextStyle(
                        color: Colors.white,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
