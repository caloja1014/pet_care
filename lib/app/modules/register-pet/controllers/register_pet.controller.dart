import 'dart:convert';

import 'package:get/get.dart';
import 'package:pet_care/app/data/serivces/connection_wrapper.dart';
import 'package:http/http.dart' as http;

class RegisterPetController extends GetxController {
  final ConnectionWrapper connectionWrapper;
  RegisterPetController({
    required this.connectionWrapper,
  });
  //TODO: Implement RegisterPetController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<http.Response> postPet({
    required String breed,
    required String name,
    required int age,
    required String petownerIdentification,
  }) {
    Map<String, dynamic> body = {
      'breed': breed,
      'name': name,
      'age': age,
      'petownerIdentification': petownerIdentification,
    };
    final String encodedData = json.encode(body);
    http.Client client = new http.Client();
    return client.post(
      Uri.parse(
        ConnectionWrapper.ROOT_URL + '/pet',
      ),
      body: encodedData,
      headers: {"Content-Type": "application/json"},
    );
  }

  int calculateAge(birthDate){
    double ages = 0;
    DateTime actual = DateTime.now();

    ages = actual.difference(birthDate).inDays/360;

    return ages.round();
  }
  void increment() => count.value++;
}
