import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormField extends StatefulWidget {
  final FocusNode? focusNode;

  const DateFormField({
    Key? key,
    required this.focusNode,
  }) : super(key: key);

  @override
  State<DateFormField> createState() => DateFormFieldState();
}

class DateFormFieldState extends State<DateFormField> {
  TextEditingController _date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        labelText: "Fecha Nacimiento",
      ),
      onTap: () async {
        DateTime? date = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now());

          if(date != null){
            setState(() {
              _date.text = DateFormat('yyyy-MM-dd').format(date);
            });
          }
      }
    );
  }
}