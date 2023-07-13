import 'package:flutter/material.dart';
import 'package:lms/components/text_field_container.dart';
import 'package:lms/constants.dart';

class NameInput extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  NameInput({
    Key? key,
    // required this._nameController,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: _nameController,
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
