import 'package:flutter/material.dart';

class FavoriteNotesPage extends StatefulWidget {
  FavoriteNotesPage({Key key}) : super(key: key);

  @override
  _FavoriteNotesPageState createState() => _FavoriteNotesPageState();
}

class _FavoriteNotesPageState extends State<FavoriteNotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Favorite'),
      ),
    );
  }
}
