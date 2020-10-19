// Flutter imports
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActionsBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(top: screenSize.height * 0.05),
        child: Container(
          height: screenSize.height * 0.1,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SvgPicture.asset("assets/pages/home/icons/back.svg"),
              SvgPicture.asset("assets/pages/home/icons/menu.svg")
            ],
          ),
        ),
      ),
    );
  }
}
