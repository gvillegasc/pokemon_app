// Flutter imports
import 'package:flutter/material.dart';

class TitlePokedex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(
            left: screenSize.width * 0.08,
            right: screenSize.width * 0.08,
            bottom: screenSize.height * 0.02),
        alignment: Alignment.bottomLeft,
        child: Text(
          "Pokedex",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: screenSize.height * 0.04),
        ),
      ),
    );
  }
}
