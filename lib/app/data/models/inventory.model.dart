class Inventory {
  int? id;
  int? quantity;
  int? productId;
  int? localId;

  Inventory({this.id, this.quantity, this.productId, this.localId});

  Inventory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quantity = json['quantity'];
    productId = json['productId'];
    localId = json['localId'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['quantity'] = quantity;
    data['productId'] = productId;
    data['localId'] = localId;
    return data;
  }
}
