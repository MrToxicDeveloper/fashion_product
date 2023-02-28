import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List Name = [
    "Shoes",
    "T-Shirts",
    "Top",
    "Blazer",
    "Hoodie",
    "Jeans",
    "Combo",
    "Jacket",
    "Hotwear",
    "Watch",
  ];
  List Rating = [
    "5.0",
    "4.2",
    "3.3",
    "4.3",
    "3.7",
    "2.7",
    "4.1",
    "3.8",
    "4.1",
    "4.4",
  ];
  List Img = [
    "assets/images/shoes.png",
    "assets/images/d555-honolulu-surf-t-shirt-4615-1-p[ekm]467x500[ekm].jpg",
    "assets/images/girls-top-500x500.jpg",
    "assets/images/ilford-county-blazer1193.jpg",
    "assets/images/CTK121_newnavy_flat_back_98FCF32DF6ED8.jpg",
    "assets/images/fb-sister-kimi-skinny-push-up-467x500.jpg",
    "assets/images/rowan-tree-grey-shorts-black-t-shirt-set-8418-p[ekm]342x500[ekm].jpg",
    "assets/images/puma-eagle-point-mens-sports-poly-full-zip-track-jacket-grey-yellow-15616-p[ekm]467x500[ekm].jpg",
    "assets/images/ST281_darkgreyheather_flat_front_76_5AB68C03EE5BC.jpg",
    "assets/images/images.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text("Shopping Gallery UI"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) => Product(Name[index], Rating[index], Img[index]),
            itemCount: 10,
          ),
        ),
      ),
    );
  }

  Widget Product(String Name, String Rating, String Img) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          // padding: EdgeInsets.all(10),
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            // border: Border.all(width: 0.2,color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.asset("$Img", fit: BoxFit.cover)),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: EdgeInsets.all(10),
            height: 30,
            width: 75,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            // alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$Rating",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 17,
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(10),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            alignment: Alignment.center,
            child: Text(
              "$Name",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}
