// import 'package:lms/Dashboard/Doctor/bottom_nav.dart';
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lms/Screens/Welcome2/intropage.dart';
// import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:lms/constants.dart';
import 'package:lms/screens/login_success/login_success_screen.dart';
// import 'Dashboard/Doctor/custom-app-bar.dart';

// import 'Screens/Welcome2/main_welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // (Route<dynamic> route) => false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MEDICAL APP',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: IntroPage(),
      // LoginSuccessScreen()
      //
      // BottomNav(),
      //
      // WelcomeScreen2(),
      //
    );
  }
}
