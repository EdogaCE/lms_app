// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:flutter_auth/Screens/Login/components/body.dart';
import 'package:lms/Screens/Login_student/components/body.dart';

class LoginPatient extends StatelessWidget {
  const LoginPatient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
