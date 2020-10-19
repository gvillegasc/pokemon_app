// Flutter imports
import 'dart:convert';
import 'package:http/http.dart' as http;

// Models
import 'package:pokemon_app/models/pokemon.dart';

// Global
import 'package:pokemon_app/global/enviroment.dart';

class PokemonService {
  Future<List<Pokemon>> getPokemons() async {
    try {
      final resp = await http.get(
        '${Enviroment.apiUrl}/pokemons',
      );
      if (resp.statusCode == 200) {
        final decodedData = json.decode(resp.body);
        final dynamic dataPokemons = Pokemons.fromJsonList(decodedData);
        final List<Pokemon> pokemons = dataPokemons.items;
        return pokemons;
      }
      return null;
    } catch (err) {
      print(err);
      return null;
    }
  }
}
