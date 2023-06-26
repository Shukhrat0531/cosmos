class Arend {
  final Product product;
  final List<Price> prices;

  Arend({required this.product, required this.prices});

  factory Arend.fromJson(Map<String, dynamic> json) {
    return Arend(
      product: Product.fromJson(json['product']),
      prices: (json['prices'] as List).map((e) => Price.fromJson(e)).toList(),
    );
  }
}

class Product {
  final int id;
  final String name;
  final String description;
  final String cover;
  final List<Image> images;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.cover,
    required this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      cover: json['cover'],
      images: (json['images'] as List).map((e) => Image.fromJson(e)).toList(),
    );
  }
}

class Image {
  final String path;

  Image({required this.path});

  factory Image.fromJson(Map<String, dynamic> json) {
    return Image(
      path: json['path'],
    );
  }
}

class Price {
  final int id;
  final int productId;
  final int price;
  final int oldPrice;
  final int bonus;
  final int daysCount;

  Price({
    required this.id,
    required this.productId,
    required this.price,
    required this.oldPrice,
    required this.bonus,
    required this.daysCount,
  });

  factory Price.fromJson(Map<String, dynamic> json) {
    return Price(
      id: json['id'],
      productId: json['product_id'],
      price: json['price'],
      oldPrice: json['old_price'],
      bonus: json['bonus'],
      daysCount: json['days_count'],
    );
  }
}
