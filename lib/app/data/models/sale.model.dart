class Sale {
  int? id;
  int? value;
  int? petId;
  int? serviceId;

  Sale({this.id, this.value, this.petId, this.serviceId});

  Sale.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    value = json['value'];
    petId = json['petId'];
    serviceId = json['serviceId'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['value'] = value;
    data['petId'] = petId;
    data['serviceId'] = serviceId;
    return data;
  }
}
