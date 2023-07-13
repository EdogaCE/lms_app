// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lms/Screens/Login_tutor/login_screen.dart';
import 'package:lms/Screens/Login_student/login_screen.dart';
// import 'package:abcc/Screens/Welcome_Pat/welcome_screen.dart';
// import 'package:abcc/Screens/Welcome_Doc/welcome_screen.dart';
import 'package:lms/components/rounded_button.dart';
import 'package:lms/constants.dart';
// import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/boy.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: Opacity(
              opacity: 0,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [LightColor.purpleExtraLight, LightColor.purple],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      tileMode: TileMode.mirror,
                      stops: [.5, 6]),
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 400.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Center(
                        child: Text(
                          "Welcome to",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.tealAccent),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          // Text(
                          //   "🩺",
                          //   style: TextStyle(
                          //       fontWeight: FontWeight.bold,
                          //       fontSize: 35,
                          //       color: Colors.purpleAccent),
                          // ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "LMS",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.blueAccent),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 8, 8, 8),
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        height: 80,
                        child: RoundedButton(
                          text: "TUTOR",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                // (Route<dynamic> route) => false;
                                return LoginDoctor();
                              },
                            ));
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Container(
                        width: 150,
                        height: 80,
                        child: RoundedButton(
                          text: "STUDENTS",
                          color: kPrimaryLightColor,
                          textColor: Colors.black,
                          press: () {
                            Future(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const LoginPatient();
                                  },
                                ),
                              );
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
