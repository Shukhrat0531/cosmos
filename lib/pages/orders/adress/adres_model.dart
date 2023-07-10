class AddressModel {
  final int id;
  final String street;
  final String building;
  final String apartment;

  AddressModel(this.id, this.street, this.building, this.apartment);

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(json['id'] as int, json['street'] as String,
        json['building'] as String, json['apartment'] as String);
  }
}
