import 'package:pet_care/app/data/models/inventory.model.dart';
import 'package:pet_care/app/data/models/service.model.dart';

class Local {
  int? id;
  String? name;
  int? latitude;
  int? longitude;
  String? description;
  bool? isVeterinary;
  String? smallDescription;
  List<Inventory>? inventory;
  List<Service>? services;

  Local(
      {
      required this.id,
      required this.name,
      required this.latitude,
      required this.longitude,
      required this.description,
      required this.isVeterinary,
      required this.smallDescription,
      this.inventory,
      this.services});

  Local.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    description = json['description'];
    isVeterinary = json['isVeterinary'];
    smallDescription = json['smallDescription'];
    // inventory = json['inventory'].cast<Inventory>();
    // services = json['services'].cast<Service>();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['description'] = description;
    data['isVeterinary'] = isVeterinary;
    data['smallDescription'] = smallDescription;
    data['inventory'] = inventory;
    data['services'] = services;
    return data;
  }
  @override
  String toString() {
    return 'Local{id: $id, name: $name, latitude: $latitude, longitude: $longitude, description: $description, isVeterinary: $isVeterinary, smallDescription: $smallDescription, inventory: $inventory, services: $services}';
  }
}
