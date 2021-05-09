import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nulis_app/pages/home/home_page.dart';
import 'package:nulis_app/pages/notes/my_notes/my_notes_page.dart';
import 'package:nulis_app/utilities/resources.dart';

void main() {
  runApp(NulisApp());
}

class NulisApp extends StatelessWidget {
  const NulisApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: NulisColorPalette.backgroundColor,
      ),
    );
    return MaterialApp(
      title: 'Nulis App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: NulisColorPalette.primaryColor,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          titleTextStyle: GoogleFonts.poppins(
            color: Colors.black,
          ),
          iconTheme: IconThemeData(
            color: NulisColorPalette.darkColor,
          ),
        ),
        scaffoldBackgroundColor: NulisColorPalette.backgroundColor,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        MyNotesPage.routeName: (context) => MyNotesPage(),
      },
    );
  }
}
