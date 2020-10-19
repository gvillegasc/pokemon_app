// Flutter imports
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Pokeball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Positioned(
        top: 0,
        right: 0,
        child: SvgPicture.asset(
          "assets/pages/pokedex_page/images/pokeball.svg",
          height: screenSize.height * 0.3,
          width: screenSize.height * 0.3,
        ));
  }
}
