import 'package:flutter/material.dart';

import 'package:iti_final_project/screens/home/home_screen.dart';
import 'package:flutter/services.dart';
import 'package:iti_final_project/screens/details/Product_screen.dart';
import 'package:iti_final_project/components/product.dart';
import 'package:iti_final_project/screens/registeration/registeration_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      // systemNavigationBarColor: Colors.blue, // navigation bar color
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light // status bar color
      ));
  runApp(getMyAppRootWidget());
}

Widget getMyAppRootWidget() {
  Widget materialAppWidget = new MaterialApp(
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
    ),
    initialRoute: '/',
    routes: {
      '/second': (context) => RegisterationScreen(),
      '/third': (context) => ProductScreen(),
      '/chair': (context) => ChairScreen(),
      '/night': (context) => NightStands(),
      '/sofa': (context) => Sofas(),
      '/desk': (context) => Desk(),
    },
  );
  return materialAppWidget;
}
