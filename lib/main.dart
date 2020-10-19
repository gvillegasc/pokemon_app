// Flutter imports
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Pages
import 'package:pokemon_app/routes/routes.dart';
import 'package:pokemon_app/themes/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Notch config
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: 'Pokemon App',
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      initialRoute: initialRoute,
      routes: appRoutes,
    );
  }
}
