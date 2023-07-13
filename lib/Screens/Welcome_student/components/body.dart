import 'package:flutter/material.dart';
import 'package:lms/Screens/Login_student/login_screen.dart';
// import 'package:lms/Screens/Signup_Pat/signup_screen.dart';
import 'package:lms/Screens/Welcome_student/components/background.dart';
import 'package:lms/components/rounded_button.dart';
import 'package:lms/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "STUDENTS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(height: size.height * 0.05),
            // Image.asset(
            //   "assets/images/doc3.jpg",
            //   // height: size.height * 0.05,
            // ),
            SvgPicture.asset(
              "assets/doc6.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 150,
                    height: 80,
                    child: RoundedButton(
                      text: "LOGIN",
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const LoginPatient();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 150,
                    height: 80,
                    // child: RoundedButton(
                    //   text: "SIGN UP",
                    //   color: kPrimaryLightColor,
                    //   textColor: Colors.black,
                    //   press: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) {
                    //           return const SignUpPatient();
                    //         },
                    //       ),
                    //     );
                    //   },
                    // ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
