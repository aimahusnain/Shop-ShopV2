import 'package:flutter/material.dart';

class Traditional extends StatefulWidget {
  static const String id = "Traditional";
  const Traditional({Key? key}) : super(key: key);

  @override
  State<Traditional> createState() => _TraditionalState();
}

class _TraditionalState extends State<Traditional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Traditional Food")),
        backgroundColor: Colors.green,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    height: 434,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color(0xfff2f2f2),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(70),
                            bottomLeft: Radius.circular(70),
                            topRight: Radius.circular(70),
                            topLeft: Radius.circular(70)),
                        image: DecorationImage(
                          alignment: Alignment.topCenter,
                          image: AssetImage("images/Biryani.jpg"),
                        ),
                        boxShadow: [
                          BoxShadow(color: Color(0xff9f9f9f), blurRadius: 22),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Biryani",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23),
                        ),
                        Text(
                            "Indulge in the exquisite delight of our Special Biryani, a culinary masterpiece that promises an explosion of flavors in every bite. Crafted with passion and the finest ingredients, this dish is a harmonious blend of fragrant basmati rice, tender succulent meat (or vegetables for the vegetarian option), and an array of aromatic spices that dance on your palate. One taste is all it takes to transport you to a world of culinary bliss. Savor the richness, savor the experience – this Biryani is truly a treat for your taste buds. 🍛😍")
                      ],
                    ),
                  ),
                  //child: Image(image: AssetImage("images/Biryani.jpg")),
                ),
              ),
            )
          ]),
    );
  }
}
