import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import 'package:pet_care/app/routes/app_pages.dart';
import 'package:pet_care/config/config.dart' as config;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ENV = config.ENV;
  MyApp({Key? key}) : super(key: key);
  Map<int, Color> color = {
    50: const Color.fromRGBO(26, 192, 198, .5),
    100: const Color.fromRGBO(26, 192, 198, 1),
    200: const Color.fromRGBO(26, 190, 190, 1),
    300: const Color.fromRGBO(26, 192, 198, 1),
    400: const Color.fromRGBO(26, 192, 198, 1),
    500: const Color.fromRGBO(26, 192, 198, 1),
    600: const Color.fromRGBO(26, 192, 198, 1),
    700: const Color.fromRGBO(26, 192, 198, 1),
    800: const Color.fromRGBO(26, 192, 198, 1),
    900: const Color.fromRGBO(26, 192, 198, 1),
  };
  final primaryColor = const Color.fromRGBO(26, 192, 198, 1);
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
          buttonTheme: ButtonThemeData(
            buttonColor: primaryColor,
          ),
          textTheme: TextTheme(
            titleLarge: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
            titleMedium: TextStyle(
              // fontSize: 20,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
            titleSmall: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                primary: primaryColor,
                minimumSize: const Size(180, 50),
                maximumSize:const Size(180, 50) ,
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
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              borderSide: BorderSide(
                color: Colors.red,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
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
