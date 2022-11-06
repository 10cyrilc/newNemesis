import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nemesis_hackathon/models.dart/user_model.dart';
import 'package:nemesis_hackathon/services/auth.dart';

class firestoreHelper {
  static Future<void> create(userModel user) async {
    final userCol = FirebaseFirestore.instance.collection('users');
    String? conUser = Authservice().currentUser?.uid;

    final docRef = userCol.doc(conUser);

    // final newUser = userModel(
    //     name: user.name,
    //     type: user.type,
    //     organization: user.organization,
    //     profile_pic: user.profile_pic,
    //     rating: user.rating);

    // final json = jsonEncode(newUser);

    try {
      // await docRef.set({'name':  });
      print(json);
    } catch (e) {
      print('Error: $e');
    }
  }
}
