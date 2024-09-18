import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_card/image_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  static const TextStyle styleCard = TextStyle(
    fontFamily: 'Times New Roman',
    color: Colors.white,
    fontSize: 10,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF7CF5FF),
        title: const Text("eRecipe"),
        titleTextStyle:
            GoogleFonts.nerkoOne(color: const Color(0xFF26355D), fontSize: 25),
        centerTitle: true,
        leading: const Icon(
          Icons.home,
          size: 30,
          color: Color(0xFF26355D),
        ),
      ),
      body: Column(
        children: <Widget>[
          // search bar
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10, right: 140),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff7CF5FF),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  hintText: "Find Recipe",
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Color(0xFF26355D)),
            ),
          ),
          // For you
          Container(
            padding: const EdgeInsets.only(top: 10, left: 20),
            alignment: Alignment.topLeft,
            child: Text(
              "For You",
              style:
                  GoogleFonts.righteous(color: Color(0xFF26355D), fontSize: 18),
            ),
          ),
          // Content for you
          Container(
            height: 155,
            margin: const EdgeInsets.only(top: 10, bottom: 0),
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        child: const Padding(
                          padding:
                              EdgeInsets.only(right: 8, left: 8, bottom: 0),
                          child: TransparentImageCard(
                            width: 200,
                            imageProvider:
                                AssetImage('assets/images/katsu.jpeg'),
                            title:
                                Text('Chicken Katsu Curry', style: styleCard),
                            description: Text(
                              "saya suka saya suka",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Times New Roman",
                                fontSize: 8,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: const Padding(
                          padding: EdgeInsets.only(right: 8, bottom: 0),
                          child: TransparentImageCard(
                            width: 200,
                            imageProvider:
                                AssetImage('assets/images/sayur.jpeg'),
                            title: Text('Healthy food', style: styleCard),
                            description: Text(
                              "Makan sayur dekk",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Times New Roman",
                                fontSize: 8,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: const Padding(
                          padding: EdgeInsets.only(right: 8, bottom: 0),
                          child: TransparentImageCard(
                            width: 200,
                            imageProvider:
                                AssetImage('assets/images/ayampop.jpeg'),
                            title: Text('Chicken Pop', style: styleCard),
                            description: Text(
                              "pop pop pop pop pop",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Times New Roman",
                                fontSize: 8,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //
          Container(
            padding: const EdgeInsets.only(left: 20, top: 20),
            alignment: Alignment.topLeft,
            child: Text(
              "All",
              style:
                  GoogleFonts.righteous(color: Color(0xFF26355D), fontSize: 13),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: const EdgeInsets.all(30),
              children: [
                Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFFEEEEEE),
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 100,
                      margin: const EdgeInsets.only(left: 20, top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/gimbap.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      padding: const EdgeInsets.only(left: 118, top: 128),
                      child: const Icon(
                        Icons.favorite, 
                        size: 25,
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsets.only(top: 129, left: 23),
                      child: const Text(
                        "Gimbap",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsets.only(top: 5, left: 20),
                      child: const Text(
                        "eRecipe Official",
                        style: TextStyle(
                          fontSize: 7,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ]
                ),
                Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFFEEEEEE),
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 100,
                      margin: const EdgeInsets.only(left: 20, top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/baci.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      padding: const EdgeInsets.only(left: 118, top: 128),
                      child: const Icon(
                        Icons.favorite_border_outlined,
                        size: 25,
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsets.only(top: 129, left: 23),
                      child: const Text(
                        "Bakso Aci",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsets.only(top: 5, left: 20),
                      child: const Text(
                        "eRecipe Official",
                        style: TextStyle(
                          fontSize: 7,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFFEEEEEE),
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 100,
                      margin: const EdgeInsets.only(left: 20, top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/wonton.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      padding: const EdgeInsets.only(left: 118, top: 128),
                      child: const Icon(
                        Icons.favorite,
                        size: 25,
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsets.only(top: 129, left: 23),
                      child: const Text(
                        "Wonton Chili Oil",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsets.only(top: 5, left: 20),
                      child: const Text(
                        "eRecipe Official",
                        style: TextStyle(
                          fontSize: 7,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFFEEEEEE),
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 100,
                      margin: const EdgeInsets.only(left: 20, top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/rapokki.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      padding: const EdgeInsets.only(left: 118, top: 128),
                      child: const Icon(
                        Icons.favorite,
                        size: 25,
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsets.only(top: 129, left: 23),
                      child: const Text(
                        "Rapokki",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsets.only(top: 5, left: 20),
                      child: const Text(
                        "eRecipe Official",
                        style: TextStyle(
                          fontSize: 7,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFFEEEEEE),
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 100,
                      margin: const EdgeInsets.only(left: 20, top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/sate.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      padding: const EdgeInsets.only(left: 118, top: 128),
                      child: const Icon(
                        Icons.favorite_outline_outlined,
                        size: 25,
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsets.only(top: 129, left: 23),
                      child: const Text(
                        "Sate Ayam",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsets.only(top: 5, left: 20),
                      child: const Text(
                        "eRecipe Official",
                        style: TextStyle(
                          fontSize: 7,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFFEEEEEE),
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 100,
                      margin: const EdgeInsets.only(left: 20, top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/pizza.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      padding: const EdgeInsets.only(left: 118, top: 128),
                      child: const Icon(
                        Icons.favorite,
                        size: 25,
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsets.only(top: 129, left: 23),
                      child: const Text(
                        "Pizza",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsets.only(top: 5, left: 20),
                      child: const Text(
                        "eRecipe Official",
                        style: TextStyle(
                          fontSize: 7,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFFEEEEEE),
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 100,
                      margin: const EdgeInsets.only(left: 20, top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/naspad.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      padding: const EdgeInsets.only(left: 118, top: 128),
                      child: const Icon(
                        Icons.favorite,
                        size: 25,
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsets.only(top: 129, left: 23),
                      child: const Text(
                        "Nasi Padang",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsets.only(top: 5, left: 20),
                      child: const Text(
                        "eRecipe Official",
                        style: TextStyle(
                          fontSize: 7,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFFEEEEEE),
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 100,
                      margin: const EdgeInsets.only(left: 20, top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/dumpling.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      padding: const EdgeInsets.only(left: 118, top: 128),
                      child: const Icon(
                        Icons.favorite_outline_outlined,
                        size: 25,
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsets.only(top: 129, left: 23),
                      child: const Text(
                        "Dumpling",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsets.only(top: 5, left: 20),
                      child: const Text(
                        "eRecipe Official",
                        style: TextStyle(
                          fontSize: 7,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}