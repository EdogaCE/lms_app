// import 'package:flutter/cupertino.dart';
// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:lms/Screens/Login_tutor/components/background.dart';
import 'package:lms/components/rounded_button.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Background(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 200),
              const Text("RESET PASSWORD",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Please Enter your Email Address",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: SingleChildScrollView(
                  child: Container(
                    height: 30,
                    width: double.infinity,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          width: 2,
                          color: Colors.black,
                        )),
                        hintStyle: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 80,
                width: 200,
                child: RoundedButton(
                  text: "RESET PASSWORD",
                  press: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
