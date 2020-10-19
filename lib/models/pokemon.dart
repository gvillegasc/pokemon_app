import 'dart:convert';

Pokemon pokemonFromJson(String str) => Pokemon.fromJson(json.decode(str));

String pokemonToJson(Pokemon data) => json.encode(data.toJson());

class Pokemons {
  List<Pokemon> items = new List();

  Pokemons();

  Pokemons.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;
    for (var item in jsonList) {
      final pokemon = new Pokemon.fromJson(item);
      items.add(pokemon);
    }
  }
}

class Pokemon {
  Pokemon({
    this.id,
    this.name,
    this.type,
    this.photo,
    this.evolution,
  });

  int id;
  String name;
  String type;
  String photo;
  int evolution;

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        photo: json["photo"],
        evolution: json["evolution"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "photo": photo,
        "evolution": evolution,
      };
}
