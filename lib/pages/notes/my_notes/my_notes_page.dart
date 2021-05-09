import 'package:flutter/material.dart';
import 'package:nulis_app/widgets/primary_app_bar.dart';
import 'package:nulis_app/widgets/search_bar.dart';

class MyNotesPage extends StatefulWidget {
  static const routeName = '/my_notes';
  MyNotesPage({Key key}) : super(key: key);

  @override
  _MyNotesPageState createState() => _MyNotesPageState();
}

class _MyNotesPageState extends State<MyNotesPage> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _focus = FocusNode();
  bool _validate = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        _searchController.clear();
      },
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(24.0, 46.0, 24.0, 0.0),
                child: PrimaryAppBar(
                  title: 'My Notes',
                  onActionTap: () {},
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 20.0,
                ),
                child: SearchBar(
                  controller: _searchController,
                  focusNode: _focus,
                  validate: _validate,
                  hint: "Let's find your notes",
                  onSubmitted: (value) {
                    if (_searchController.text.isEmpty) {
                      _validate = true;
                      FocusScope.of(context).unfocus();
                    } else {
                      _validate = false;
                      FocusScope.of(context).unfocus();
                      // TODO: Load Notes Data
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
