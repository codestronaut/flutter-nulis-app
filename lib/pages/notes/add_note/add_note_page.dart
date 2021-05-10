import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_quill/widgets/controller.dart';
import 'package:flutter_quill/widgets/editor.dart';
import 'package:flutter_quill/widgets/toolbar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nulis_app/data/services/firestore_service.dart';
import 'package:nulis_app/utilities/resources.dart';
import 'package:nulis_app/utilities/styles.dart';

class AddNotePage extends StatefulWidget {
  AddNotePage({Key key}) : super(key: key);

  @override
  _AddNotePageState createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  QuillController _quillController = QuillController.basic();
  FirestoreService _firestoreService = FirestoreService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Write Note',
          style: NulisStyles.kTitleTextStyle.copyWith(
            color: NulisColorPalette.darkColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: RawMaterialButton(
                elevation: 0.0,
                focusElevation: 0.0,
                highlightElevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                fillColor: Colors.white,
                splashColor: Colors.blueGrey[100],
                child: SvgPicture.asset(
                  'assets/icons/save.svg',
                  width: 28.0,
                  height: 28.0,
                  color: NulisColorPalette.primaryColor,
                ),
                onPressed: () {
                  var json =
                      jsonEncode(_quillController.document.toDelta().toJson());
                  print(json);
                  _firestoreService.addNote(json).then(
                    (value) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Add Note Success'),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
            ),
            child: QuillToolbar.basic(
              toolbarIconSize: 20.0,
              controller: _quillController,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(24.0),
              child: QuillEditor.basic(
                controller: _quillController,
                readOnly: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
