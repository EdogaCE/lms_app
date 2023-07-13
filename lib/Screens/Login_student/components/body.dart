// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously, avoid_print, unused_local_variable, unused_field

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'package:lms/Screens/Login_student/components/background.dart';

import 'package:lms/Screens/Welcome2/main_welcome_screen.dart';
import 'package:lms/Screens/login_success/login_success_screen.dart';
import 'package:lms/Screens/resetpassword.dart';
import 'package:lms/components/already_have_an_account_acheck.dart';
import 'package:lms/components/rounded_button.dart';
import 'package:lms/components/rounded_input_field.dart';
import 'package:lms/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lms/components/text_field_container.dart';
import 'package:lms/constants.dart';
import 'package:lms/dashboard.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  late final ValueChanged<String> onChanged;
  MultiValidator? validator;
  bool hidePassword = true;
  bool _isLoading = false;
  var url = 'https://test.qverselearning.com/api/v1/student/login';

  postData() async {
    Map data = {
      "email": emailController.text,
      "password": passwordController.text,
    };
    var headers = {
      'Content-Type':
          'application/json', // Adjust the content type based on your API requirements
    };
    var jsonData;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var response = await http.post(Uri.parse(url),
        headers: headers, body: jsonEncode(data));

    print(response.body);

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      print(response.body);
      setState(() {
        _isLoading = false;
        sharedPreferences.setString("token", jsonData.toString());

        // jsonData.toString;
      });

      //  Sign in also done

      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (BuildContext context) => LoginSuccessScreen(),
          ),
          (Route<dynamic> route) => false);
    } else {
      print(response.body);
    }
  }

  late String _email, _password;
  ScaffoldMessengerState? scaffoldMessenger;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.01),
            const Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/login.svg",
              height: size.height * 0.25,
            ),
            SizedBox(height: size.height * 0.02),
            TextFieldContainer(
              child: TextFormField(
                controller: emailController,
                onChanged: (value) {},
                cursorColor: kPrimaryColor,
                validator: EmailValidator(errorText: "Use a valid email!"),
                // onSaved: (email) => _email = email!,
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: kPrimaryColor,
                  ),
                  hintText: "Put your email here",
                  border: InputBorder.none,
                ),
              ),
            ),
            TextFieldContainer(
              child: TextFormField(
                controller: passwordController,
                obscureText: hidePassword,
                onChanged: (value) {},
                cursorColor: kPrimaryColor,
                validator: passwordValidator,
                onSaved: (password) => _password = password!,
                decoration: InputDecoration(
                  hintText: "Password",
                  icon: const Icon(
                    Icons.lock,
                    color: kPrimaryColor,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                    icon: Icon(
                        hidePassword ? Icons.visibility_off : Icons.visibility),
                    color: kPrimaryColor,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ResetPasswordScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 50),
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            RoundedButton(
              text: "LOGIN",
              press: postData,
            ),
            SizedBox(height: size.height * 0.03),
            // AlreadyHaveAnAccountCheck(
            //   press: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return SignUpPatient();
            //         },
            //       ),
            //     );
            //   },
            // ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const WelcomeScreen2();
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
