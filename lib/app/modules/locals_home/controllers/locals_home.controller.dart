import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pet_care/app/data/serivces/connection_wrapper.dart';

import '../../../data/models/local.model.dart';

class LocalsHomeController extends GetxController {
  //TODO: Implement LocalsHomeController


  Future<List<Local>> getAllLocals() {
    http.Client client = http.Client();

    return client
        .get(
      Uri.parse(
        ConnectionWrapper.ROOT_URL + '/local',
      ),
    )
        .then((value) {
      final response = json.decode(value.body);
      final localsList = response.map<Local>((e) {
        final val = e as Map<String, dynamic>;
        return Local.fromJson(val);
      }).toList();
      return localsList;
    });
  }

}
