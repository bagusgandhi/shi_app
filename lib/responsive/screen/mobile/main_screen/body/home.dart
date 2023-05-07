import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../../../../../models/playlist_music.dart';

// pada main screen yang pertama kali muncul adalah body content Home

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {

    /* 
      agar bisa di scroll gunakan widget SingleChildScrollView() 
      terdiri dari 3 column, Column yang setiap columnya akan ada LIstview untuk menampilkan data dummy playlist
      dengan direction hosrizontal
    */
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Recently Played',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 200,

                  /*
                    untuk menampilan listView pada data dummy playlist yang ada pada lib/nodes/playlist_music.dart
                    set scrollDirection agar dapat di scroll secara horizontal
                  */ 
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: playlist.length,
                    itemBuilder: (context, index) {

                      // buat variable item, yang isinya adalah playlist item
                      final PlaylistMusic item = playlist[index];

                      /*
                        padasetiap item datanya akan dibungkus widget Container()
                        lalu isikan widget COlumn ke dalamnya. DI dalam widget column
                        terdiri dari Container() untuk menampilkan Box berwarna, Text() untuk TItle, dan Text() untuk subtitle
                      */

                      return Container(
                        padding: const EdgeInsets.only(right: 8),
                        width: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 120,
                              color: Colors.deepPurple,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              item.title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
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
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'More of what you like',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: playlist.length,
                    itemBuilder: (context, index) {
                      final PlaylistMusic item = playlist[index];

                      return Container(
                        padding: EdgeInsets.only(right: 8),
                        width: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 120,
                              color: Colors.deepOrange,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              item.title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
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
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Party',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: playlist.length,
                    itemBuilder: (context, index) {
                      final PlaylistMusic item = playlist[index];

                      return Container(
                        padding: EdgeInsets.only(right: 8),
                        width: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 120,
                              color: Colors.greenAccent,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              item.title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
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
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
