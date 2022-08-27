import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login.controller.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            logoText(),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Usuario o Correo',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Usuario o Correo',
                    ),
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Iniciar sesión',
              ),
            ),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  color: Colors.white,
                ),
                text: '¿No tienes cuenta? ',
                children: [
                  TextSpan(
                    text: 'Registrate',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget logoText() {
    return Stack(
      children: [
        Text(
          'Pet Care',
          style: GoogleFonts.balooPaaji2(
            fontSize: 80,
            fontWeight: FontWeight.w700,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 15
              ..color = const Color.fromRGBO(26, 192, 198, 1),
          ),
        ),
        Text(
          'Pet Care',
          style: GoogleFonts.balooPaaji2(
            fontSize: 80,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
