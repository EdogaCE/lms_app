import 'package:flutter/material.dart';
import 'package:lms/components/text_field_container.dart';
import 'package:lms/constants.dart';

class NumberInput extends StatelessWidget {
  final TextEditingController _numberController = TextEditingController();
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  NumberInput({
    Key? key,
    // required this._nameController,
    required this.hintText,
    required this.icon,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: _numberController,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
