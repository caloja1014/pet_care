import 'package:pet_care/app/data/models/pet.model.dart';

class Petowner {
  String? identification;
  String? name;
  String? lastName;
  List<Pet>? pets;

  Petowner({this.identification, this.name, this.lastName, this.pets});

  Petowner.fromJson(Map<String, dynamic> json) {
    identification = json['identification'];
    name = json['name'];
    lastName = json['lastName'];
    pets = json['pets'].cast<Pet>();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['identification'] = identification;
    data['name'] = name;
    data['lastName'] = lastName;
    data['pets'] = pets;
    return data;
  }
}
