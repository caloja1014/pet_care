import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  @override
  RegisterFormState createState() {
    return RegisterFormState();
  }
}

class RegisterFormState extends State<RegisterForm> {
  final _registerFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _registerFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: (value) {
              if(value == null || value.isEmpty) {
                return 'Ingrese texto';
              }
              return null;
            },
          ),
          Padding(padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ElevatedButton(
            onPressed: () {
              if(_registerFormKey.currentState!.validate()) {
                print("Todo ok");
              }
            },
            child: Text("Submit"),
          ))
        ],
      )
    );
  }
}
