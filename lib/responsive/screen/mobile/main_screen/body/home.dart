import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../../../../../models/playlist_music.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
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
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: playlist.length,
                    itemBuilder: (context, index) {
                      final PlaylistMusic item = playlist[index];

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
                      // return Padding(
                      //   padding: const EdgeInsets.,
                      //   child:
                      // );
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
