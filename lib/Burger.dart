import 'package:flutter/material.dart';
import 'package:shop_shop/DesiFood.dart';

class Burger extends StatefulWidget {
  static const String id = "Burger";
  const Burger({Key? key}) : super(key: key);

  @override
  State<Burger> createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("What is Burger")),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Traditional(),
                    ));
              },
              child: Text("Screen2"),
            ),
          ),
        ],
      ),
    );
  }
}
