import 'package:flutter/material.dart';
// import 'package:flutter_auth/Screens/Welcome/components/body.dart';
import 'package:lms/Screens/Welcome_student/components/body.dart';

class WelcomePatient extends StatelessWidget {
  const WelcomePatient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
