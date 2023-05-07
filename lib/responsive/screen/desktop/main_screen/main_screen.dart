import 'package:flutter/material.dart';
import 'package:shi_app/responsive/screen/desktop/main_screen/body/feed.dart';
import 'package:shi_app/responsive/screen/desktop/main_screen/body/home.dart';
import 'package:shi_app/responsive/screen/desktop/main_screen/body/library.dart';
import 'package:shi_app/responsive/screen/desktop/main_screen/body/search.dart';
import 'package:shi_app/responsive/screen/desktop/main_screen/body/settings.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // buat variable _selectedIndex untuk menampung index navigasi item yang di klik
  int _selectedIndex = 0;
  // buat _tite label untuk item navigasi
  final List<String> _title = ['Home', 'Feed', 'Search', 'Library', 'Settings'];

  // buat LIst data body yang akan ditampilkan
  final List<Widget> _body = [
    const HomeBodyDesktop(),
    const FeedBodyDesktop(),
    const SearchBodyDesktop(),
    const LibraryBodyDesktop(),
    const SettingsBodyDesktop(),
  ];

/*
  Pada tampilan desktop ini juga terdapat appBar, untuk navigasinya menggunakan
  widget NavigationRail() yang akan tampil di samping.
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text(
              'CloudSound',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // pada button upgrade saat di klik akan menampilkan popup dialog
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.deepPurple,
                            title: const Text(
                              "Upgrade to PRO",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                height: 1.6,
                              ),
                            ),
                            content: const Text(
                              "Upgrading your CloudSound account is an excellent way to take your music career to the next level.",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                height: 1.6,
                              ),
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("OK"),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent),
                    child: Text(
                      'Upgrade',
                      style: TextStyle(
                        color: Colors.amber[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Icon(
                    Icons.mail_outline,
                    color: Colors.grey[600],
                  ),
                  SizedBox(width: 20.0),
                  Icon(
                    Icons.notifications_outlined,
                    color: Colors.grey[600],
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.grey[900],
      ),

      // Row yang didalamnya terdiri dari NavigationRail() dan body
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NavigationRail(
            onDestinationSelected: (int index) {
              // set _selectedIndex sesuai index data navigasi yang di klik
              setState(() {
                _selectedIndex = index;
              });
            },
            selectedIndex: _selectedIndex,
            backgroundColor: Colors.grey[200],
            selectedIconTheme: const IconThemeData(
              color: Colors.black,
              size: 30,
            ),
            unselectedIconTheme: IconThemeData(
              color: Colors.grey[500],
              size: 30,
            ),
            labelType: NavigationRailLabelType.all,
            selectedLabelTextStyle: const TextStyle(
              color: Colors.black,
            ),
            destinations: [
              NavigationRailDestination(
                icon: const Icon(Icons.home),
                label: Text(_title[0]),
              ),
              NavigationRailDestination(
                icon: const Icon(Icons.feed),
                label: Text(_title[1]),
              ),
              NavigationRailDestination(
                icon: const Icon(Icons.search),
                label: Text(_title[2]),
              ),
              NavigationRailDestination(
                icon: const Icon(Icons.library_books),
                label: Text(_title[3]),
              ),
              NavigationRailDestination(
                icon: const Icon(Icons.settings),
                label: Text(_title[4]),
              ),
            ],
          ),

          //tampilkan body sesuai _body dari index _selectedIndex yang di pilih
          Expanded(
            child: IndexedStack(
              index: _selectedIndex,
              children: _body,
            ),
          )
        ],
      ),
    );
  }
}
