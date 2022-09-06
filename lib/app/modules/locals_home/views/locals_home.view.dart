import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pet_care/app/data/models/local.model.dart';

import '../controllers/locals_home.controller.dart';
import 'package:http/http.dart' as http;

class LocalsHomeView extends GetView<LocalsHomeController> {
  const LocalsHomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Locales'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Local>>(
        future: controller.getAllLocals(),
        builder: (context, snapshot) {
          // print((snapshot.data as http.Response).body);
          if (snapshot.hasData) {
            final vets = snapshot.data!.skipWhile((value) => value.isVeterinary??false);
            final shops = snapshot.data!.skipWhile((value) => value.isVeterinary??true);
            return Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
                          width: double.infinity,
                          color: Colors.red,
                          child: const Text('Local'),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
