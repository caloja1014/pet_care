import 'dart:convert';

import 'package:get/get.dart';
import 'package:pet_care/app/data/serivces/connection_wrapper.dart';
import 'package:http/http.dart' as http;

class UpdatePetOwnerController extends GetxController {
  final ConnectionWrapper connectionWrapper;
  UpdatePetOwnerController({
    required this.connectionWrapper
  });
  //TODO: Implement RegisterPetOwnerController

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

  Future<http.Response> updatePetOwner({
    required String identification,
    required String name,
    required String lastName
  }) {
    Map<String, dynamic> body = {
      'identification': identification,
      'name': name,
      'lastName': lastName,
    };
    final String encodedData = json.encode(body);
    http.Client client = new http.Client();
    return client.put(
      Uri.parse(
        ConnectionWrapper.ROOT_URL + '/petOwner/' + identification,
      ),
      body: encodedData,
      headers: {"content-type": "application/json"},
    );
  }

  void increment() => count.value++;
}
