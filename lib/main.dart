import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nulis_app/pages/home/home_page.dart';
import 'package:nulis_app/pages/notes/my_notes/my_notes_page.dart';
import 'package:nulis_app/utilities/resources.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(NulisApp());
}

class NulisApp extends StatefulWidget {
  const NulisApp({Key key}) : super(key: key);

  @override
  _NulisAppState createState() => _NulisAppState();
}

class _NulisAppState extends State<NulisApp> {
  bool _initialized = false;
  bool _error = false;

  void initializeFlutterFire() async {
    try {
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    initializeFlutterFire();
  }

  @override
  Widget build(BuildContext context) {
    /*
    Set primary status bar theme
    */
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: NulisColorPalette.backgroundColor,
      ),
    );

    if (_error) {
      // TODO: Implement error page
    }

    if (!_initialized) {
      // TODO: Implement loading page
    }

    return MaterialApp(
      title: 'Nulis App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: NulisColorPalette.primaryColor,
        appBarTheme: AppBarTheme(
          color: NulisColorPalette.backgroundColor,
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
