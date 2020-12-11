import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final String Function(String) validator;
  final _lettersRegExp = RegExp('[a-zA-Z]\$');

  TextInputField({
    Key key,
    this.label,
    this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (_lettersRegExp.hasMatch(value) == false) {
            return "Enter a valid $label";
          }
          return validator(value);
        },
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
          alignLabelWithHint: true,
        ),
      ),
    );
  }
}
