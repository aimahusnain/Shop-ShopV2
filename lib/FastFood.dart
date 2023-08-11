import 'package:flutter/material.dart';
import 'package:shop_shop/Burger.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = "ScreenTwo";
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("FastFood")),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.black,
              backgroundImage: AssetImage("images/Burger.jpeg"),
            ),
            title: Text("Burger"),
            subtitle: Text("Food"),
            trailing: TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Burger()));
              },
              child: Text("What is Burger"),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.black,
              backgroundImage: AssetImage("images/Pizza2.jpeg"),
            ),
            title: Text("Pizza"),
            subtitle: Text("Food"),
            trailing: TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Burger()));
              },
              child: Text("What is Pizza"),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.black,
              backgroundImage: AssetImage("images/Shawarma.jpeg"),
            ),
            title: Text("Shawarma"),
            subtitle: Text("Food"),
            trailing: TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Burger()));
              },
              child: Text("What is shawarma"),
            ),
          ),
        ],
      ),
    );
  }
}
