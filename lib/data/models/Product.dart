class Product {
  String id;
  String name;
  int quantity;
  double price;
  String? image;
  String? description;

  // 1. Constructor
  Product({
    required this.id,
    required this.name,
    required this.quantity,
    required this.price,
    this.image,
    this.description,
  });

  // 2. Chuyen doi tu Map (JSON) sang Object
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"] as String,
      name: json["name"] as String,
      quantity: json["quantity"] as int,
      price: (json["price"] as num).toDouble(),
      image: json["image"] as String?,
      description: json["description"] as String?,
    );
  }

  // 3. Chuyen doi tu Object sang Map (JSON)
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "quantity": quantity,
      "price": price,
      "image": image,
      "description": description,
    };
  }

  // 4. Ham sao chep/clone doi tuong (copyWith hoac copyTo)
  Product copyTo({
    String? id,
    String? name,
    int? quantity,
    double? price,
    String? image,
    String? description,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      image: image ?? this.image,
      description: description ?? this.description,
    );
  }
}
