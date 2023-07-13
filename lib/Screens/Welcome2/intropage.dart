// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lms/Screens/Welcome2/main_welcome_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';
// import 'main_welcome_screen.dart';

// ignore: use_key_in_widget_constructors
class IntroPage extends StatefulWidget {
  // const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  _endWelcomePage(context) {
    // Navigator.of(context).pop(context);
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (_) => WelcomeScreen2(),
    ));
  }

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset(
          "assets/book.png",
          width: 200,
          height: 200,
        ),
        title: "Learning Management System",
        body:
            "We have a good quality platform that can help you with your studies",
        // footer: Text("Ente your footer here"),
        decoration: const PageDecoration(
          pageColor: Colors.white70,
        ),
      ),
      PageViewModel(
        image: Image.asset(
          "assets/book.png",
          width: 200,
          height: 200,
        ),
        title: "Learning Management System",
        body:
            "We have a good quality platform that can help you with your studies",
        // footer: Text("Ente your footer here"),
        decoration: const PageDecoration(
          pageColor: Colors.white70,
        ),
      ),
      PageViewModel(
        image: Image.asset(
          "assets/book.png",
          width: 200,
          height: 200,
        ),
        title: "Learning Management System",
        body:
            "We have a good quality platform that can help you with your studies",
        // footer: Text("Ente your footer here"),
        decoration: const PageDecoration(
          pageColor: Colors.white70,
        ),
      ),
      PageViewModel(
        image: Image.asset(
          "assets/book.png",
          width: 200,
          height: 200,
        ),
        title: "Learning Management System",
        body:
            "We have a good quality platform that can help you with your studies",
        // footer: Text("Ente your footer here"),
        decoration: const PageDecoration(
          pageColor: Colors.white70,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        showDoneButton: true,
        showNextButton: true,
        showSkipButton: true,
        next: const Text("Next"),
        skip: const Text("Skip"),
        done: const Text("Done"),
        onDone: () {
          _endWelcomePage(context);
        },
        onSkip: () {
          _endWelcomePage(context);
        },
        pages: getPages(),
      ),
    );
  }
}
