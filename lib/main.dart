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
        ),
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      ),
    );
  }
}
