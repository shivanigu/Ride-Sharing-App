import 'dart:js';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChatBodyWidget extends StatelessWidget {
  final List<User> users;
  const ChatBodyWidget({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: buildChats(),
    );
  }

  Widget buildChats() => ListView.builder(
        itemBuilder: (context, index) {
          final user = users[index];

          return Container(
            height: 75,
            child: ListTile(
              onTap: () {},
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(user.photoURL ?? "No picture"),
              ),
              title: Text(user.displayName ?? "Name not found"),
            ),
          );
        },
        itemCount: users.length,
      );
}
