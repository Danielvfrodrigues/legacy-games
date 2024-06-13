import 'package:cloud_firestore/cloud_firestore.dart';

class Dao {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  addMemberGreen() async {
    await firestore
        .collection('legacy-games')
        .doc('members')
        .update({'green': FieldValue.increment(1)});
  }

  addMemberRed() async {
    await firestore
        .collection('legacy-games')
        .doc('members')
        .update({'red': FieldValue.increment(1)});
  }

  addMemberYellow() async {
    await firestore
        .collection('legacy-games')
        .doc('members')
        .update({'yellow': FieldValue.increment(1)});
  }

  updateFistMatchScores(String first, String second, String third) async {
    await firestore
        .collection('legacy-games')
        .doc('first_match')
        .update({
            'first': first,
            'second': second,
            'third': third,
        });
  }

  updateSecondMatchScores(String first, String second, String third) async {
    await firestore
        .collection('legacy-games')
        .doc('second_match')
        .update({
      'first': first,
      'second': second,
      'third': third,
    });
  }

  updateThirdMatchScores(String first, String second, String third) async {
    await firestore
        .collection('legacy-games')
        .doc('third_match')
        .update({
      'first': first,
      'second': second,
      'third': third,
    });
  }
}
