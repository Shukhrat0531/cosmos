class CartItemModel {
  final int cartId;
  final int productId;
  final String name;
  final String cover;
  final int daysCount;
  final int price;

  CartItemModel(this.cartId, this.productId, this.name, this.cover,
      this.daysCount, this.price);

  factory CartItemModel.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> product = json['product'];
    final Map<String, dynamic> price = json['price'];

    return CartItemModel(
      json['id'] as int,
      product['id'] as int,
      product['name'] as String,
      product['cover'] as String,
      price['days_count'] as int,
      price['price'] as int,
    );
  }
}
