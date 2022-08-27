import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import 'package:pet_care/app/routes/app_pages.dart';
import 'package:pet_care/config/config.dart' as config;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final ENV = config.ENV;
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ENV['ASSETS']['IMAGES']['backPage']),
          fit: BoxFit.cover,
        ),
      ),
      child: GetMaterialApp(
        title: 'Pet Care',
        theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(25, 0, 0, 0),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          buttonTheme: const ButtonThemeData(
            buttonColor: Color.fromRGBO(26, 192, 198, 1),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                primary: const Color.fromRGBO(26, 192, 198, 1),
                minimumSize: const Size(180, 50),
                // fixedSize: const Size(1200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 4),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(26, 192, 198, 0.42),
              ),
            ),
            hintStyle: TextStyle(color: Color.fromRGBO(26, 192, 198, 0.42)),
          ),
        ),
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      ),
    );
  }
}
