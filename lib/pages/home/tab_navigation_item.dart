import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:nulis_app/pages/notes/add_note/add_note_page.dart';
import 'package:nulis_app/pages/notes/favorite_notes/favorite_notes_page.dart';
import 'package:nulis_app/pages/notes/my_notes/my_notes_page.dart';
import 'package:nulis_app/pages/profile/profile_page.dart';

class TabNavigationItem {
  final Widget page;
  final String title;
  final Widget selectedIcon;
  final Widget unselectedIcon;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.selectedIcon,
    @required this.unselectedIcon,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: MyNotesPage(),
          title: 'My Notes',
          selectedIcon: ImageIcon(
            Svg('assets/icons/home.svg'),
            size: 28.0,
          ),
          unselectedIcon: ImageIcon(
            Svg('assets/icons/home_outline.svg'),
            size: 28.0,
          ),
        ),
        TabNavigationItem(
          page: FavoriteNotesPage(),
          title: 'Favorite Notes',
          selectedIcon: ImageIcon(
            Svg('assets/icons/star.svg'),
            size: 28.0,
          ),
          unselectedIcon: ImageIcon(
            Svg('assets/icons/star_outline.svg'),
            size: 28.0,
          ),
        ),
        TabNavigationItem(
          page: AddNotePage(),
          title: 'Write Note',
          selectedIcon: ImageIcon(
            Svg('assets/icons/plus.svg'),
            size: 28.0,
          ),
          unselectedIcon: ImageIcon(
            Svg('assets/icons/plus_outline.svg'),
            size: 28.0,
          ),
        ),
        TabNavigationItem(
          page: ProfilePage(),
          title: 'Profile',
          selectedIcon: ImageIcon(
            Svg('assets/icons/category.svg'),
            size: 28.0,
          ),
          unselectedIcon: ImageIcon(
            Svg('assets/icons/category_outline.svg'),
            size: 28.0,
          ),
        ),
      ];
}
