import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login.controller.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends GetView<LoginController> {
  final textFormFieldWidth = Get.width * 0.7;
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
                  Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    width: textFormFieldWidth,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Usuario o Correo',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    width: textFormFieldWidth,
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Contraseña',
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Iniciar sesión',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  text: '¿No tienes cuenta? ',
                  children: [
                    TextSpan(
                      text: 'Registrate',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          controller.displayRegisterType(context);
                        },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget logoText() {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Stack(
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
      ),
    );
  }
}
