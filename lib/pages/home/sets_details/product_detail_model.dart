

import '../logic/data/model/genre.dart';

class ProductDetailModel{
  final int id;
  final String name;
  final String description;
  final List<String> images;
  final List<PriceModel> prices;

  ProductDetailModel(this.id, this.name, this.description, this.images,this.prices);

  factory ProductDetailModel.fromJson(Map<String, dynamic>json){
    final Map<String, dynamic> productJson = json['product'];


    List<String> imagePaths = [];
    final images = json['images'];
    if (images is List) {
      imagePaths = images
          .map((e) => e is Map<String, dynamic> ? e['path'] as String : null)
          .whereType<String>()
          .toList();
    } else if (images is Map<String, dynamic>) {
      images.forEach((key, value) => imagePaths.add(value['path'] as String));
    }
    return ProductDetailModel(
      productJson['id'] as int,
      productJson['name'] as String,
      productJson['description'] as String,
      imagePaths,
      (json['prices'] as List).map((e) => PriceModel.fromJson(e)).toList(),
    );
  }


}