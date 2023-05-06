import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
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
  int _selectedIndex = 0;
  final List<String> _title = ['Home', 'Feed', 'Search', 'Library', 'Settings'];
  final List<Widget> _body = [
    const HomeBodyDesktop(),
    const FeedBodyDesktop(),
    const SearchBodyDesktop(),
    const LibraryBodyDesktop(),
    const SettingsBodyDesktop(),
  ];

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
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.deepPurple,
                            title: Text(
                              "Upgrade to PRO",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                height: 1.6,
                              ),
                            ),
                            content: Text(
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
                  // SizedBox(width: 10.0),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.grey[900],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NavigationRail(
            onDestinationSelected: (int index) {
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
