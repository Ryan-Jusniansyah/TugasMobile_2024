import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_card/image_card.dart';
import 'package:group_list_view/group_list_view.dart';

class MyFavorite extends StatefulWidget {
  const MyFavorite({super.key});

  @override
  State<MyFavorite> createState() => _MyFavoriteState();
}

class _MyFavoriteState extends State<MyFavorite> {
  static const TextStyle styleCard = TextStyle(
    fontFamily: 'Times New Roman',
    color: Colors.white,
    fontSize: 10,
  );

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
        backgroundColor: Color(0xFF7CF5FF),
        title: const Text("Favorites"),
        titleTextStyle: GoogleFonts.nerkoOne(
          color: Color(0xff26355D),
          fontSize: 25,
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.favorite,
          color: Color(0xff26355D),
          size: 30,
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10, left: 20),
            alignment: Alignment.topLeft,
            child: Text(
              "Recently Viewed",
              style:
                  GoogleFonts.righteous(color: Color(0xFF26355D), fontSize: 18),
            ),
          ),
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
          Container(
            padding: const EdgeInsets.only(left: 20, top: 20),
            alignment: Alignment.topLeft,
            child: Text(
              "Favorites",
              style:
                  GoogleFonts.righteous(color: Color(0xFF26355D), fontSize: 15),
            ),
          ),
          // Expanded(
          //   child: GridView.count(
          //     crossAxisCount: 1,
          //     mainAxisSpacing: 10,
          //     crossAxisSpacing: 0,
          //     padding: const EdgeInsets.all(20),
          //     children: [
          //       Stack(
          //         children: [
          //           Container(
          //             width: 500,
          //             height: 80,
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               border: Border.all(
          //                 color: Color(0xFFEEEEEE),
          //                 width: 1,
          //                 style: BorderStyle.solid,
          //               ),
          //               image: const DecorationImage(
          //                   image: AssetImage('assets/images/gimbap.jpg'),
          //                   fit: BoxFit.cover,
          //                   opacity: 0.7),
          //             ),
          //           ),
          //           Container(
          //             height: 30,
          //             width: 90,
          //             margin: const EdgeInsets.only(top: 23, left: 40),
          //             child: const Text(
          //               "Gimbap",
          //               style: TextStyle(
          //                 fontSize: 25,
          //                 fontWeight: FontWeight.w700,
          //                 color: Color(0xFF26355D),
          //               ),
          //             ),
          //           ),
          //           Container(
          //             width: 40,
          //             height: 40,
          //             margin: const EdgeInsets.only(left: 280, top: 23),
          //             child: const Icon(
          //               Icons.favorite,
          //               size: 35,
          //               color: Colors.red,
          //             ),
          //           ),
          //         ],
          //       ),
          //       Stack(
          //         children: [
          //           Container(
          //             width: 500,
          //             height: 80,
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               border: Border.all(
          //                 color: Color(0xFFEEEEEE),
          //                 width: 1,
          //                 style: BorderStyle.solid,
          //               ),
          //               image: const DecorationImage(
          //                   image: AssetImage('assets/images/gimbap.jpg'),
          //                   fit: BoxFit.cover,
          //                   opacity: 0.7),
          //             ),
          //           ),
          //           Container(
          //             height: 30,
          //             width: 90,
          //             margin: const EdgeInsets.only(top: 23, left: 40),
          //             child: const Text(
          //               "Gimbap",
          //               style: TextStyle(
          //                 fontSize: 25,
          //                 fontWeight: FontWeight.w700,
          //                 color: Color(0xFF26355D),
          //               ),
          //             ),
          //           ),
          //           Container(
          //             width: 40,
          //             height: 40,
          //             margin: const EdgeInsets.only(left: 280, top: 23),
          //             child: const Icon(
          //               Icons.favorite,
          //               size: 35,
          //               color: Colors.red,
          //             ),
          //           ),
          //         ],
          //       ),
          //       Stack(
          //         children: [
          //           Container(
          //             width: 500,
          //             height: 80,
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               border: Border.all(
          //                 color: Color(0xFFEEEEEE),
          //                 width: 1,
          //                 style: BorderStyle.solid,
          //               ),
          //               image: const DecorationImage(
          //                   image: AssetImage('assets/images/gimbap.jpg'),
          //                   fit: BoxFit.cover,
          //                   opacity: 0.7),
          //             ),
          //           ),
          //           Container(
          //             height: 30,
          //             width: 90,
          //             margin: const EdgeInsets.only(top: 23, left: 40),
          //             child: const Text(
          //               "Gimbap",
          //               style: TextStyle(
          //                 fontSize: 25,
          //                 fontWeight: FontWeight.w700,
          //                 color: Color(0xFF26355D),
          //               ),
          //             ),
          //           ),
          //           Container(
          //             width: 40,
          //             height: 40,
          //             margin: const EdgeInsets.only(left: 280, top: 23),
          //             child: const Icon(
          //               Icons.favorite,
          //               size: 35,
          //               color: Colors.red,
          //             ),
          //           ),
          //         ],
          //       ),
          //       Stack(
          //         children: [
          //           Container(
          //             width: 500,
          //             height: 80,
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               border: Border.all(
          //                 color: Color(0xFFEEEEEE),
          //                 width: 1,
          //                 style: BorderStyle.solid,
          //               ),
          //               image: const DecorationImage(
          //                   image: AssetImage('assets/images/gimbap.jpg'),
          //                   fit: BoxFit.cover,
          //                   opacity: 0.7),
          //             ),
          //           ),
          //           Container(
          //             height: 30,
          //             width: 90,
          //             margin: const EdgeInsets.only(top: 23, left: 40),
          //             child: const Text(
          //               "Gimbap",
          //               style: TextStyle(
          //                 fontSize: 25,
          //                 fontWeight: FontWeight.w700,
          //                 color: Color(0xFF26355D),
          //               ),
          //             ),
          //           ),
          //           Container(
          //             width: 40,
          //             height: 40,
          //             margin: const EdgeInsets.only(left: 280, top: 23),
          //             child: const Icon(
          //               Icons.favorite,
          //               size: 35,
          //               color: Colors.red,
          //             ),
          //           ),
          //         ],
          //       ),
          //       Stack(
          //         children: [
          //           Container(
          //             width: 500,
          //             height: 80,
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               border: Border.all(
          //                 color: Color(0xFFEEEEEE),
          //                 width: 1,
          //                 style: BorderStyle.solid,
          //               ),
          //               image: const DecorationImage(
          //                   image: AssetImage('assets/images/gimbap.jpg'),
          //                   fit: BoxFit.cover,
          //                   opacity: 0.7),
          //             ),
          //           ),
          //           Container(
          //             height: 30,
          //             width: 90,
          //             margin: const EdgeInsets.only(top: 23, left: 40),
          //             child: const Text(
          //               "Gimbap",
          //               style: TextStyle(
          //                 fontSize: 25,
          //                 fontWeight: FontWeight.w700,
          //                 color: Color(0xFF26355D),
          //               ),
          //             ),
          //           ),
          //           Container(
          //             width: 40,
          //             height: 40,
          //             margin: const EdgeInsets.only(left: 280, top: 23),
          //             child: const Icon(
          //               Icons.favorite,
          //               size: 35,
          //               color: Colors.red,
          //             ),
          //           ),
          //         ],
          //       ),
          //       Stack(
          //         children: [
          //           Container(
          //             width: 500,
          //             height: 80,
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               border: Border.all(
          //                 color: Color(0xFFEEEEEE),
          //                 width: 1,
          //                 style: BorderStyle.solid,
          //               ),
          //               image: const DecorationImage(
          //                   image: AssetImage('assets/images/gimbap.jpg'),
          //                   fit: BoxFit.cover,
          //                   opacity: 0.7),
          //             ),
          //           ),
          //           Container(
          //             height: 30,
          //             width: 90,
          //             margin: const EdgeInsets.only(top: 23, left: 40),
          //             child: const Text(
          //               "Gimbap",
          //               style: TextStyle(
          //                 fontSize: 25,
          //                 fontWeight: FontWeight.w700,
          //                 color: Color(0xFF26355D),
          //               ),
          //             ),
          //           ),
          //           Container(
          //             width: 40,
          //             height: 40,
          //             margin: const EdgeInsets.only(left: 280, top: 23),
          //             child: const Icon(
          //               Icons.favorite,
          //               size: 35,
          //               color: Colors.red,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
          Container(
            height: 400,
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
      // Row(

      //   )
    );
  }
}
