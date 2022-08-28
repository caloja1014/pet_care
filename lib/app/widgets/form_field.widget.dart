import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final FocusNode? focusNode;
  final String text;

  const CustomFormField({
    Key? key,
    required this.focusNode,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      decoration: InputDecoration(
        labelText: text,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Campo vacío";
        }
        return null;
      },
    );
  }
}