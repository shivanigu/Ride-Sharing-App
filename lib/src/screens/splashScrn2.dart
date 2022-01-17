// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_signin_button/flutter_signin_button.dart';
// import 'package:ride_sharing/config/app_config.dart' as config;
// import 'package:ride_sharing/provider/base_view.dart';
// import 'package:ride_sharing/view/login_viewmodel.dart';
import 'dart:async';

// void main() {
//   runApp(const MaterialApp(
//     home: SplaceScreen2(),
//   ));
// }

class SplaceScreen2 extends StatefulWidget {
  const SplaceScreen2({Key? key}) : super(key: key);

  @override
  State<SplaceScreen2> createState() => _SplaceScreen2State();
}

class _SplaceScreen2State extends State<SplaceScreen2> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacementNamed('/'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height / 5,
          ),
          Image.asset('assets/images/splash_2.png'),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 2.0, 20.0, 2.0),
              child: Text(
                'Maps assistance to pick up your partenaire and there you go!! Enjoy thy ride!!',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
