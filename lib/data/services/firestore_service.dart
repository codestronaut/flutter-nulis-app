import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> addNote(dynamic note) {
    CollectionReference notes = firestore.collection('notes');

    return notes
        .add({
          'data': note,
        })
        .then((value) => print('Status: Note added!'))
        .catchError((error) => print('Error: $error'));
  }
}
