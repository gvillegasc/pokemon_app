// Flutter imports
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Models
import 'package:pokemon_app/models/pokemon.dart';

class CardPokemon extends StatelessWidget {
  final Pokemon pokemon;

  const CardPokemon({Key key, @required this.pokemon})
      : assert(pokemon != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return FadeIn(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(screenSize.height * 0.02),
        child: Container(
          width: double.infinity,
          height: screenSize.height * 0.2,
          decoration: BoxDecoration(
              color: _backgroundColorByEvolution(pokemon.evolution),
              borderRadius: BorderRadius.circular(screenSize.height * 0.02)),
          child: Stack(
            children: <Widget>[
              Positioned(
                right: 0,
                bottom: -screenSize.height * 0.01,
                child:
                    SvgPicture.asset("assets/pages/home/images/pokeball2.svg"),
                height: screenSize.height * 0.12,
                width: screenSize.height * 0.12,
              ),
              Positioned(
                right: -screenSize.height * 0.02,
                bottom: -screenSize.height * 0.02,
                child: Container(
                  height: screenSize.height * 0.16,
                  width: screenSize.height * 0.16,
                  child: CachedNetworkImage(
                    imageUrl: pokemon.photo,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                  child: Text(
                    "#00${pokemon.id}",
                    style: TextStyle(
                        fontSize: screenSize.height * 0.025,
                        fontWeight: FontWeight.w700,
                        color: Colors.black.withOpacity(0.15)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: screenSize.height * 0.04,
                    left: screenSize.width * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Text(
                        pokemon.name,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: screenSize.height * 0.025),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        _capitalize(pokemon.type),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: screenSize.height * 0.02),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Color _backgroundColorByType(String type) {
    if (type == "grass") {
      return Color(0xff48D0B0);
    } else if (type == "fire") {
      return Color(0xffFB6C6C);
    } else if (type == "water") {
      return Color(0xff77BCFD);
    } else {
      return Color(0xffF5F5F5);
    }
  }

  Color _backgroundColorByEvolution(int evolution) {
    if (evolution == 1) {
      return Color(0xff48D0B0);
    } else if (evolution == 2) {
      return Color(0xffFB6C6C);
    } else if (evolution == 3) {
      return Color(0xff77BCFD);
    } else {
      return Color(0xffF5F5F5);
    }
  }

  String _capitalize(String text) {
    return "${text[0].toUpperCase()}${text.substring(1)}";
  }
}
