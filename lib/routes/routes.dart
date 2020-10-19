import 'package:flutter/material.dart';

// Pages
import 'package:pokemon_app/pages/pokedex_page/pokedex_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  PokedexPage.routeName: (_) => PokedexPage(),
};

final String initialRoute = PokedexPage.routeName;
