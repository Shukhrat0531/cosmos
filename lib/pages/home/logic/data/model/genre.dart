class Genre {
  final int id;
  final String name;
  final String image;

  Genre({required this.id, required this.name, required this.image});

  factory Genre.fromJson(Map<String, dynamic> json) {
    return Genre(
      id: json['id'],
      name: json['name'],
      image: json['image'],
    );
  }
}



class ProductPreviewModel {
  final int id;
  final String name;
  final String image;

  ProductPreviewModel(
      {required this.id, required this.name, required this.image});

  factory ProductPreviewModel.fromJson(Map<String, dynamic> json) {
    return ProductPreviewModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
    );
  }
}

class PriceModel {
  final int id;
  final int productId;
  final int price;
  final int oldPrice;
  final int bonus;
  final int daysCount;

  PriceModel(
      {required this.id,
      required this.productId,
      required this.price,
      required this.oldPrice,
      required this.bonus,
      required this.daysCount});

  factory PriceModel.fromJson(Map<String, dynamic> json) {
    return PriceModel(
      id: json['id'],
      productId: json['product_id'],
      price: json['price'],
      oldPrice: json['old_price'],
      bonus: json['bonus'],
      daysCount: json['days_count'],
    );
  }
}
class SetModel {
  final ProductPreviewModel product;
  final List<PriceModel> prices;

  SetModel({required this.product, required this.prices});

  factory SetModel.fromJson(Map<String, dynamic> json) {
    return SetModel(
      product: ProductPreviewModel.fromJson(json['product']),
      prices:
          (json['prices'] as List).map((e) => PriceModel.fromJson(e)).toList(),
    );
  }
}

