import 'package:flutter/material.dart';
import 'package:nulis_app/pages/home/tab_navigation_item.dart';
import 'package:nulis_app/pages/notes/add_note/add_note_page.dart';
import 'package:nulis_app/utilities/resources.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  int _previousIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex == 2 ? _previousIndex : _currentIndex,
        children: [
          for (final tabItem in TabNavigationItem.items) tabItem.page,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex == 2 ? _previousIndex : _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: NulisColorPalette.primaryColor,
        unselectedItemColor: NulisColorPalette.disableColor,
        items: [
          for (final tabItem in TabNavigationItem.items)
            BottomNavigationBarItem(
              icon: tabItem.unselectedIcon,
              activeIcon: tabItem.selectedIcon,
              label: tabItem.title,
            ),
        ],
        onTap: (index) {
          setState(() {
            if (_currentIndex != 2) {
              _previousIndex = _currentIndex;
            }

            _currentIndex = index;
          });

          if (index == 2) {
            print('Write Note taped!');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddNotePage(),
              ),
            );
          }
        },
      ),
    );
  }
}
