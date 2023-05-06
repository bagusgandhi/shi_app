import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shi_app/responsive/screen/mobile/main_screen/body/feed.dart';
import 'package:shi_app/responsive/screen/mobile/main_screen/body/home.dart';
import 'package:shi_app/responsive/screen/mobile/main_screen/body/library.dart';
import 'package:shi_app/responsive/screen/mobile/main_screen/body/search.dart';
import 'package:shi_app/responsive/screen/mobile/main_screen/body/settings.dart';
import 'package:shi_app/responsive/screen/mobile/upgrade_screen/upgrade_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // ini adalah LIst title pada bottom bar dan appBar title
  final List<String> _title = ['Home', 'Feed', 'Search', 'Library', 'Settings'];

  // ini adalah list body Pada beberapa yang akan di tampilkan sesuai navigasi yang dipilih
  final List<Widget> _body = [
    const HomeBody(),
    const FeedBody(),
    const SearchBody(),
    const LibraryBody(),
    const SettingsBody(),
  ];

  /* */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(_title[_selectedIndex]),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return UpgradeScreen();
                        }),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent),
                    child: Text(
                      'Upgrade',
                      style: TextStyle(
                          color: Colors.amber[900],
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Icon(
                    Icons.mail_outline,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(width: 20.0),
                  Icon(
                    Icons.notifications_outlined,
                    color: Colors.grey[600],
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            print(_selectedIndex);
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: _title[0],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feed),
            label: _title[1],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: _title[2],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: _title[3],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: _title[4],
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.grey[900],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[600],
      ),
      backgroundColor: Colors.black,
      body: IndexedStack(
        index: _selectedIndex,
        children: _body,
      ),
    );
  }
}
