import 'package:flutter/material.dart';
import 'package:shop_shop/DesiFood.dart';
import 'package:shop_shop/Items.dart';
import 'package:shop_shop/FastFood.dart';
import 'package:shop_shop/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter Demo",
        theme: ThemeData(primarySwatch: Colors.green),
        //home: SplashScreen(),
        initialRoute: SplashScreen.id,
        routes: {
          SplashScreen.id: (context) => SplashScreen(),
          Items.id: (context) => Items(),
          ScreenTwo.id: (context) => ScreenTwo(),
          Traditional.id: (context) => Traditional(),
        });
  }
}
