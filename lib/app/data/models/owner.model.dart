import 'package:pet_care/app/data/models/local.model.dart';

class Owner {
  String? identification;
  String? name;
  String? lastName;
  int? age;
  List<Local>? locals;

  Owner({this.identification, this.name, this.lastName, this.age, this.locals});

  Owner.fromJson(Map<String, dynamic> json) {
    identification = json['identification'];
    name = json['name'];
    lastName = json['lastName'];
    age = json['age'];
    locals = json['locals'].cast<Local>();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['identification'] = identification;
    data['name'] = name;
    data['lastName'] = lastName;
    data['age'] = age;
    data['locals'] = locals;
    return data;
  }
}
