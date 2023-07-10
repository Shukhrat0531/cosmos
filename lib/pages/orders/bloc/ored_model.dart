class CreateOrderModel {
  final List<CreateOrderProductModel> products;
  final int addressId;
  final bool spendBonuses;
  final String promocode;

  CreateOrderModel(this.products, this.addressId, this.spendBonuses, this.promocode);
}

class CreateOrderProductModel {
  final int productId;
  final String name;
  final String image;
  final int price;
  final int priceId;
  final int daysCount;
  final int quantity;

  CreateOrderProductModel(this.productId, this.priceId, this.quantity, this.name, this.image, this.price, this.daysCount);

  Map<String, dynamic> toJson() {
    return {
      'product_id': productId,
      'price_id': priceId,
      'quantity': quantity,
    };
  }}