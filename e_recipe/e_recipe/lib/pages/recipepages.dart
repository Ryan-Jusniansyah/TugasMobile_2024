import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:group_list_view/group_list_view.dart';

class MyRecipe extends StatefulWidget {
  const MyRecipe({super.key});

  @override
  State<MyRecipe> createState() => _MyRecipeState();
}

class _MyRecipeState extends State<MyRecipe> {

  final Map<String, List> _elements = {
    'A' : ['Ayam Goreng', 'Ayam Pop', 'Ayam Rendang'],
    'C' : ['Cakwe', 'Cendol'],
    'S' : ['Sate', 'Sushi', 'Sop'],
    'R' : ['Risotto', 'Ramen']
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF7CF5FF),
        title: const Text("My Recipe"),
        titleTextStyle: GoogleFonts.nerkoOne(
          color: const Color(0xff26355D),
          fontSize: 25,
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.list_alt_rounded,
          color: Color(0xff26355D),
          size: 30,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 140),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xff7CF5FF),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  hintText: "Find Recipe",
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: const Color(0xFF26355D)),
            ),
          ),
          Container(
            height: 35,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 120,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF7CF5FF)
                    ),
                    child: Center(
                      child: Text("Recently Added",
                      style: GoogleFonts.openSans()
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFEEEEEE)
                    ),
                    child: Center(
                      child: Text("3 days ago", 
                      style: GoogleFonts.openSans()
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFEEEEEE),
                    ),
                    child: Center(
                      child: Text("1 week ago", 
                      style: GoogleFonts.openSans(),
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFEEEEEE)
                    ),
                    child: Center(
                      child: Text("1 month ago", 
                      style: GoogleFonts.openSans(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 550,
            child: GroupListView(
              scrollDirection: Axis.vertical,
              sectionsCount: _elements.keys.toList().length,
              countOfItemInSection: (int section){
                return _elements.values.toList()[section].length;
              },
              itemBuilder: (BuildContext context, IndexPath index) {
                return Container(
                  height: 50,
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/ayamgoyeng.jpeg"), fit: BoxFit.cover),
                  ),
                  child: Center(child: Text(
                    _elements.values.toList()[index.section][index.index], style: const TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ),
                  );
                },
                groupHeaderBuilder: (BuildContext context, int section) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Text(
                      _elements.keys.toList()[section],
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 15,
                ),
              sectionSeparatorBuilder: (context, section) => const SizedBox(
                height: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
