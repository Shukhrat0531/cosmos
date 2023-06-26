import 'dart:convert';

List<Game> gameFromJson(String str) =>
    List<Game>.from(json.decode(str)["data"].map((x) => Game.fromJson(x)));

String gameToJson(List<Game> data) =>
    json.encode({"data": List<dynamic>.from(data.map((x) => x.toJson()))});

class Game {
  Game({
    required this.id,
    required this.name,
    required this.image,
  });

  int id;
  String name;
  String image;

  factory Game.fromJson(Map<String, dynamic> json) => Game(
        id: json["id"],
        name: json["name"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
      };
}
