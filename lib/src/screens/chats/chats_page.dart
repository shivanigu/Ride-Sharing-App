import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ride_sharing/src/screens/chats/home_chat_screen.dart';

import 'chat_body_widget.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: StreamBuilder<List<User>>(
              stream: FirebaseApi.getUsers(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return Center(child: CircularProgressIndicator());
                  default:
                    if (snapshot.hasError) {
                      print(snapshot.error);
                      return buildText('Something went wrong try again');
                    } else {
                      final users = snapshot.data;

                      if (users!.isEmpty) {
                        return Column(
                          children: [ChatBodyWidget(users: users)],
                        );
                      } else
                        return buildText('No User Found');
                    }
                }
              })),
    );
  }
}

Widget buildText(String text) => Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
