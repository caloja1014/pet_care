import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/app/data/serivces/connection_wrapper.dart';
import '../../register_pet_owner/views/register_pet_owner.view.dart';
import 'package:pet_care/app/widgets/pet_avatar.widget.dart';
import 'package:pet_care/config/config.dart' as config;
import 'package:http/http.dart' as http;

class PetsController extends GetxController {
  final ConnectionWrapper connectionWrapper;

  PetsController({
    required this.connectionWrapper,
  });
  //TODO: Implement PetsController

  final ENV = config.ENV;
  // ignore: non_constant_identifier_names
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    print(RegisterPetOwnerView.petownerId);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  displayPets(BuildContext context) {
    showDialog(
      barrierColor: Colors.black87,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          content: Container(
            width: double.maxFinite,
            // height: Get.height * 0.8,
            constraints: BoxConstraints(
              maxHeight: Get.height * 0.6,
            ),
            child: FutureBuilder(
                    future: getPets(identification: RegisterPetOwnerView.petownerId),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                          shrinkWrap: true,
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, i) {
                              return ListTile(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                ),
                                leading: CircleAvatar(
                                  backgroundImage: AssetImage( 
                                    snapshot.data[i].image
                                  )),
                                title: Text(snapshot.data[i].name + " - " + snapshot.data[i].age.toString() + " años"),
                                tileColor: Colors.white,
                              );
                            });
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    }
            ),
          ),
        );
      },
    );
  }

  Future getPets({
    required String identification,
  }) async {
    http.Client client = new http.Client();
    final response = await client.get(
      Uri.parse(
        ConnectionWrapper.ROOT_URL + '/pet/' + identification,
      ),
      headers: {"content-type": "application/json"},
    );
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      List<PetAvatar> pets = [];
      for (var p in json) {
        PetAvatar pet = PetAvatar(
            image: ENV["ASSETS"]["IMAGES"]["PET"],
            height: Get.height * 0.8,
            name: p['name'],
            age: p['age']);
        pets.add(pet);
      }
      return pets;
    } else {
      throw Exception('Failed to load pets');
    }
  }

  void increment() => count.value++;
}
