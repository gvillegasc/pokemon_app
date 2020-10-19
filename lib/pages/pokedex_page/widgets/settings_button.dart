// Flutter
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xff6C79DB),
      child: SvgPicture.asset("assets/pages/pokedex_page/icons/settings.svg"),
      onPressed: () {},
    );
  }
}
