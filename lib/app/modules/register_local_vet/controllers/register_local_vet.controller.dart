import 'dart:convert';

import 'package:get/get.dart';
import 'package:pet_care/app/data/serivces/connection_wrapper.dart';
import 'package:http/http.dart' as http;

class RegisterLocalVetController extends GetxController {
  final ConnectionWrapper connectionWrapper;
  RegisterLocalVetController({required this.connectionWrapper});
  //TODO: Implement RegisterLocalVetController

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

  Future<http.Response> postLocal({
    required String name,
    int latitude = -222,
    int longitude = -222,
    required String description,
    required bool isVeterinary,
    required String ownerIdentification
  }) {
    
    Map<String, dynamic> body = {
      'name': name,
      'latitude': latitude,
      'longitude': longitude,
      'description': description,
      'isVeterinary': isVeterinary,
      'smallDescription': description.substring(0, 20),
      'ownerIdentification': ownerIdentification,
    };
    final String encodedData = json.encode(body);
     http.Client client = new http.Client();
    return client.post(
      Uri.parse(
        ConnectionWrapper.ROOT_URL + '/local',
      ),
      body: encodedData,
      headers: {"content-type": "application/json"},
    );
  }

  void increment() => count.value++;
}
