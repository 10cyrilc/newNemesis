import 'package:cloud_firestore/cloud_firestore.dart';

class userModel {
  final String? name;
  final String? type;
  final String? profile_pic;
  final String? organization;
  final double? rating;

  userModel(
      {this.name, this.type, this.rating, this.profile_pic, this.organization});

  // factory userModel.fromSnapshot(DocumentSnapshot snap) {
  //   var snapshot = snap.data() as Map<String, dynamic>;

  //   return userModel(
  //       name: snapshot['name'],
  //       type: snapshot['type'],
  //       organization: snapshot['org'],
  //       profile_pic: snapshot['profile_pic'],
  //       rating: snapshot['rating']);
  // }
}
