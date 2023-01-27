class Product {
  final String imageSrc;
  final String name;
  final String signature;
  final double price;

  Product(
      {required this.imageSrc,
      required this.name,
      required this.signature,
      required this.price});

  factory Product.fromJson(dynamic json) {
    return Product(
        imageSrc: json["imageSrc"],
        name: json["name"],
        signature: json["signature"],
        price: json["price"]);
  }
  static List<Product> fromlist(List<dynamic>? json) {
    if (json == null) return [];
    return json.map((item) => Product.fromJson(item)).toList();
  }
}
