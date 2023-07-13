// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lms/components/text_field_container.dart';
import 'package:lms/constants.dart';
import 'package:form_field_validator/form_field_validator.dart';

// ignore: must_be_immutable
class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;

  RoundedPasswordField({
    Key? key,
    MultiValidator? validator,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  final TextEditingController _passwordController = TextEditingController();

  MultiValidator? validator;

  bool hidePassword = true;

  // MultiValidator? validator;
  @override
  // bool pass;
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        // validator: passwordValidator,
        controller: _passwordController,
        obscureText: hidePassword,
        onChanged: widget.onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                hidePassword = !hidePassword;
              });
            },
            icon: Icon(hidePassword ? Icons.visibility_off : Icons.visibility),
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
