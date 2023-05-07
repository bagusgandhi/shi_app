import 'package:flutter/material.dart';
import 'package:shi_app/models/playlist_music.dart';

/*
  Pada body item Home ini menggunakan ScrollVIew agar dapat di scroll
  lalu didalamnya terdapat widget ListVIew untuk menampilkan data dummy playlist

  
 */

class HomeBodyDesktop extends StatelessWidget {
  const HomeBodyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Recently Played',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 275,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: playlist.length,
                    itemBuilder: (context, index) {
                      final PlaylistMusic item = playlist[index];

                      return Container(
                        padding: const EdgeInsets.only(right: 14),
                        width: 225,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 200,
                              color: Colors.deepPurple,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              item.title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                            Text(
                              item.subtitle,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
