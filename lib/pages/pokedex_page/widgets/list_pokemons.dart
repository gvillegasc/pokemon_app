import 'package:flutter/material.dart';

// Models
import 'package:pokemon_app/models/pokemon.dart';
import 'package:pokemon_app/pages/pokedex_page/widgets/card_pokemon.dart';

// Services
import 'package:pokemon_app/services/pokemon_service.dart';

class ListPokemons extends StatefulWidget {
  // Services
  @override
  _ListPokemonsState createState() => _ListPokemonsState();
}

class _ListPokemonsState extends State<ListPokemons> {
  final pokemonService = new PokemonService();

  Future<List<Pokemon>> _futurePokemons;

  @override
  void initState() {
    super.initState();
    _futurePokemons = pokemonService.getPokemons();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _futurePokemons,
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            final List<Pokemon> pokemons = snapshot.data;
            return SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate((_, index) {
                    return CardPokemon(
                      pokemon: pokemons[index],
                    );
                  }, childCount: pokemons.length),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 1.3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10)),
            );
          } else {
            return SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                ),
              ),
            );
          }
        });
  }
}
