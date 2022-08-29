import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final textLabel;
  final validator;
  final obscureText;
  final maxLines;
  final maxLength;
  final controller;
  final function;
  const CustomTextField({
    Key? key,
    this.textLabel,
    this.validator,
    this.controller,
    this.obscureText = false,
    this.maxLines = 1,
    this.maxLength,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(45, 10, 40, 0),
          child: Text(
            textLabel,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
          child: TextFormField(
            maxLength: maxLength,
            maxLines: maxLines,
            controller: controller,
            minLines: 1,
            onTap: function,
            decoration: const InputDecoration(
              fillColor: Color(0xFFF3F3F3),
            ),
            obscureText: obscureText,
            validator: validator,
          ),
        ),
      ],
    );
  }
}
