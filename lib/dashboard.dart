// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lms/Screens/Welcome2/main_welcome_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: 200,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.teal),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 300),
              child: Center(
                child: Text("Welcome to LMS"),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WelcomeScreen2();
                    },
                  ),
                );
              },
              child: Text("Login with a different User"),
            ),
          ],
        ),
      ),
    );
  }
}
