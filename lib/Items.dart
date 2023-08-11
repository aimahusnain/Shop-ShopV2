import 'package:flutter/material.dart';
import 'package:shop_shop/DesiFood.dart';
import 'package:shop_shop/FastFood.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_shop/login_screen.dart';
import 'package:page_transition/page_transition.dart';

class Items extends StatefulWidget {
  static const String id = "Items";
  const Items({Key? key}) : super(key: key);

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  String email = '', age = '', name = '';

  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    email = sp.getString("email") ?? '';
    age = sp.getString("age") ?? '';
    name = sp.getString("username") ?? '';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b1b1b),
      appBar: AppBar(
        title: Text("Select Your Catagory>",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[Colors.purple, Colors.blue])),
        ),
        //backgroundColor: Color(0xffffb400),
      ),
      drawer: Drawer(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(200),
                topRight: Radius.circular(100),
                topLeft: Radius.circular(56))),
        backgroundColor: Colors.pink[50],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            //DrawerHeader(child: Text("Muhammad Husnain")),
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(38),
                      topRight: Radius.circular(100)),
                  gradient: LinearGradient(
                    colors: [Colors.pink, Colors.deepPurple],
                    begin: Alignment.topLeft,
                  )),
              //color: Color(0xff222222)),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("images/Person.png")),
              accountName: Row(
                children: [
                  Text(
                    '',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    name.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ],
              ),
              accountEmail: Row(
                children: [
                  Text(
                    '',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    email.toString(),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("Cart"),
                onTap: () {}),
            Divider(
              color: Color(0xff4c4c4c),
              thickness: 1.3,
              indent: 7,
              endIndent: 7,
            ),

            ListTile(
                leading: Icon(Icons.eject),
                title: Text("Traditional Food"),
                onTap: () {
                  Navigator.pushNamed(context, Traditional.id);
                }),
            ListTile(
                leading: Icon(Icons.eject),
                title: Text("Fast Food"),
                onTap: () {
                  Navigator.pushNamed(context, ScreenTwo.id);
                }),

            Divider(
              color: Colors.black,
              thickness: 0.2,
              indent: 85,
              endIndent: 85,
            ),

            InkWell(
              onTap: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.clear();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50)),
                      gradient:
                          LinearGradient(colors: [Colors.orange, Colors.red])
                      //color: Colors.green,
                      ),
                  height: 50,
                  width: double.infinity,
                  child: Center(
                    child: Text('Logout'),
                  )),
            )
          ],
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 5,
          ),
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 11,
                )
              ],
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(100),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(30)),
              color: Color(0xff000000),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  alignment: Alignment(1, -1),
                  //fit: BoxFit.fill,

                  image: AssetImage("images/Pizza2.jpeg")),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                      child: ScreenTwo(), type: PageTransitionType.bottomToTop),
                );
              },
              child: Text(
                "Fast Food",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 37,
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.white, blurRadius: 11)],
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(100)),
              //borderRadius: BorderRadius.circular(50),
              color: Color(0xff000000),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  alignment: Alignment(1, 1),
                  //fit: BoxFit.fill,

                  image: AssetImage("images/Traditional.jpeg")),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: Traditional(),
                        type: PageTransitionType.leftToRight));
              },
              child: Center(
                child: RichText(
                  text: TextSpan(
                      text: "Hello",
                      style: Theme.of(context).textTheme.bodyText2,
                      children: [
                        TextSpan(
                            text: "Tradition",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Colors.white)),
                        TextSpan(
                          text: " Food",
                          style: TextStyle(fontSize: 38, color: Colors.white),
                        )
                      ]
                      // Text(
                      //   "Traditional",
                      //   style: TextStyle(
                      //     fontWeight: FontWeight.bold,
                      //     fontSize: 37,
                      //     color: Color(0xffffffff),
                      //   ),
                      // ),
                      ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
