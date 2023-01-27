import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'models/perpusModel.dart';

class perpustakaan extends StatefulWidget {
  @override
  _perpustakaanState createState() => _perpustakaanState();
}

class _perpustakaanState extends State<perpustakaan> {
  //GRID
  List<Container> _buildGridTileList2(int count) => List.generate(
      count,
      (index) => Container(
          child: new InkWell(
              child: Image.asset('images/pic$index.png'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(
                            todo: Todo(
                                'Gambar $index', 'images/pic$index.png'))));
              })));

  final List<String> _listItem = [
    './assets/images/img_book1.png',
    './assets/images/img_book2.png',
    './assets/images/img_book3.png',
    './assets/images/img_book4.png',
    './assets/images/img_book5.png',
    './assets/images/img_book6.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu),
        title: Text("Perpustakaan"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(10)),
              child: Center(child: Text("16")),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1549675584-91f19337af3d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGxpYnJhcnl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
                        fit: BoxFit.cover)),
                // image: AssetImage('./assets/images/img_book7.avif'),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.2),
                      ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "My Book",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      // SEARCH
                      Container(
                        height: 50,
                        // margin: EdgeInsets.only(left: 25, right: 25, top: 18),
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade200),
                        child: Stack(
                          children: <Widget>[
                            TextField(
                              // maxLengthEnforced: true,
                              style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                      left: 19, right: 50, bottom: 8),
                                  border: InputBorder.none,
                                  hintText: 'Search book...',
                                  hintStyle: GoogleFonts.openSans(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600)),
                            ),
                            Positioned(
                              top: 13,
                              right: 15,
                              child: SvgPicture.asset(
                                'assets/icons/icon_search_white.svg',
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  // Gridview berupa tampilan list tetapi berbentuk kotak-kotak, jika dalam sebuah list
                  //hanya bisa menampung satu item per row atau baris namun tidak pada list dalam bentuk
                  //GridView ini, ia dapat diatur jumlah column dalam suatu baris sesuai dengan yang kita inginkan.
                  child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: _listItem
                    .map((item) => Card(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(item),
                                    fit: BoxFit.cover)),
                            child: Transform.translate(
                              offset: Offset(50, -50),
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 65, vertical: 63),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: Icon(
                                  Icons.favorite_border,
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              )),
              Expanded(
                child: GridView.extent(
                  maxCrossAxisExtent: 330,
                  padding: const EdgeInsets.all(10),
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 4,
                  children: _buildGridTileList2(6),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
