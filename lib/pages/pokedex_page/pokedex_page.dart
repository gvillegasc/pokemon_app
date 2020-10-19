import 'package:flutter/material.dart';

// Widgets
import 'package:pokemon_app/pages/pokedex_page/widgets/list_pokemons.dart';
import 'package:pokemon_app/pages/pokedex_page/widgets/pokeball.dart';
import 'package:pokemon_app/pages/pokedex_page/widgets/actions_bar.dart';
import 'package:pokemon_app/pages/pokedex_page/widgets/settings_button.dart';
import 'package:pokemon_app/pages/pokedex_page/widgets/title_pokedex.dart';

class PokedexPage extends StatefulWidget {
  static String routeName = "pokedex";

  @override
  _PokedexPageState createState() => _PokedexPageState();
}

class _PokedexPageState extends State<PokedexPage> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: SettingsButton(),
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        child: Stack(
          children: <Widget>[
            Pokeball(),
            CustomScrollView(
                slivers: <Widget>[ActionsBar(), TitlePokedex(), ListPokemons()])
          ],
        ),
      ),
    );
  }
}
