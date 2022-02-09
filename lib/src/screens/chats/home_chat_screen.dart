import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ride_sharing/src/models/user.dart';
import '../../utils/userUtils.dart';

class FirebaseApi {
  static Stream<List<User>> getUsers() => FirebaseFirestore.instance
      .collection('users')
      .orderBy('lastCommunicationTime', descending: true)
      .snapshots()
      .transform(Utils.transformer(User.fromJson).cast());
}

// class Utils {
//   static StreamTransformer<QuerySnapshot, List<T>> transformer<T>(
//           T Function(Map<String, dynamic> json) fromJson) =>
//       StreamTransformer<QuerySnapshot, List<T>>.fromHandlers(
//         handleData: (QuerySnapshot data, EventSink<List<T>> sink) {
//           final snaps = data.docs.map((doc) => doc.data()).toList();
//           final users = snaps
//               .map((json) => fromJson(json as Map<String, dynamic>))
//               .toList();

//           sink.add(users);
//         },
//       );
// }
