import 'package:pet_care/app/data/models/sale.model.dart';

class Pet {
  int? id;
  String? name;
  String? breed;
  int? age;
  List<Sale>? sales;

  Pet({this.id, this.name, this.breed, this.age, this.sales});

  Pet.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    breed = json['breed'];
    age = json['age'];
    sales = json['sales'].cast<Sale>();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['breed'] = breed;
    data['age'] = age;
    data['sales'] = sales;
    return data;
  }
}
