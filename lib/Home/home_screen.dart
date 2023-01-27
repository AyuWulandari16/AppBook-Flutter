import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'models/vertikal_list.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  // Untuk slider caraousel
  final CarouselController _controller = CarouselController();
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1495446815901-a7297e633e8d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Ym9va3N8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1491841573634-28140fc7ced7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGJvb2tzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1599495054627-35ad07218a46?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bm92ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1614544048536-0d28caf77f41?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bm92ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQADbcGx-DiZMuDm3-gT-UulZappmXCxuAkMA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf6OTKNJ5mKR_z__GCMB8eibzWkGh_xN0HZw&usqp=CAU'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // LIST VIEW
        child: ListView(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 25, top: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Hi, Ayu',
                        style: GoogleFonts.openSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.blueGrey), //kGreyColor
                      ),
                      Text(
                        'Discover Latest Book',
                        style: GoogleFonts.openSans(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.black), //kGreyColor
                      ),
                    ])),
            Container(
              height: 39,
              margin: EdgeInsets.only(left: 25, right: 25, top: 18),
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
                        contentPadding:
                            EdgeInsets.only(left: 19, right: 50, bottom: 8),
                        border: InputBorder.none,
                        hintText: 'Search book...',
                        hintStyle: GoogleFonts.openSans(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600)),
                  ),
                  Positioned(
                    right: 0,
                    child: SvgPicture.asset('assets/svg/background_search.svg'),
                  ),
                  Positioned(
                    top: 8,
                    right: 9,
                    child:
                        SvgPicture.asset('assets/icons/icon_search_white.svg'),
                  )
                ],
              ),
            ),
            Container(
              height: 25,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left: 25),
              child: DefaultTabController(
                length: 3,
                child: TabBar(
                    labelPadding: EdgeInsets.all(0),
                    indicatorPadding: EdgeInsets.all(0),
                    isScrollable: true,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    labelStyle: GoogleFonts.openSans(
                        fontSize: 14, fontWeight: FontWeight.w700),
                    unselectedLabelStyle: GoogleFonts.openSans(
                        fontSize: 14, fontWeight: FontWeight.w600),
                    tabs: [
                      Tab(
                        child: Container(
                          margin: EdgeInsets.only(right: 23),
                          child: Text('New'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          margin: EdgeInsets.only(right: 23),
                          child: Text('Trending'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          margin: EdgeInsets.only(right: 23),
                          child: Text('Best Seller'),
                        ),
                      )
                    ]),
              ),
            ),
            // CARAOUSEL PACKAGE FLUTTER
            SingleChildScrollView(
              child: Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                        onPageChanged: (index, caraouseLReason) {
                          print(index);
                          setState(() {
                            _current = index;
                          });
                        }),
                    items: imgList
                        .map((item) => Container(
                              child: Container(
                                margin: EdgeInsets.all(5.0),
                                child: ClipRRect(
                                    //cliprect agar gambar bisa dibentuk bentuk
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                    child: Stack(
                                      //untuk menumpuk widget
                                      children: <Widget>[
                                        Image.network(item,
                                            fit: BoxFit.cover, width: 1000.0),
                                        Positioned(
                                          bottom: 0.0,
                                          left: 0.0,
                                          right: 0.0,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color.fromARGB(200, 0, 0, 0),
                                                  Color.fromARGB(0, 0, 0, 0)
                                                ],
                                                begin: Alignment.bottomCenter,
                                                end: Alignment.topCenter,
                                              ),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10.0,
                                                horizontal: 20.0),
                                            child: Text(
                                              'No. ${imgList.indexOf(item)} image',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ))
                        .toList(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 12.0,
                          height: 12.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black)
                                  .withOpacity(
                                      _current == entry.key ? 0.9 : 0.4)),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 10),
              child: Text(
                'Popular',
                style: GoogleFonts.openSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            ListView.builder(
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const MyVerticalList(
                      courseImage: 'assets/images/img_book3.png',
                      courseTitle: 'Sanding Some Love',
                      courseDuration: '11 miliion readers',
                      courseRating: 4.0);
                }),
            ListView.builder(
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const MyVerticalList(
                      courseImage: 'assets/images/img_book1.png',
                      courseTitle: "YOU'RE A MIRACLE",
                      courseDuration: '10,5 miliion readers',
                      courseRating: 3.5);
                }),
            ListView.builder(
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const MyVerticalList(
                      courseImage: 'assets/images/img_book2.png',
                      courseTitle: "THE COLOR OF YOU",
                      courseDuration: '8,5 miliion readers',
                      courseRating: 3.0);
                }),
          ],
        ),
      ),
    );
  }
}




















// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'vertikal_list.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final List book = [
//     './assets/images/img_popular_book3.png',
//     './assets/images/img_newbook1.png',
//     './assets/images/img_popular_book1.png',
//     './assets/images/img_popular_book2.png',
//     './assets/images/img_newbook2.png',
//     './assets/images/img_popular_book3.png',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: ListView(
//           children: <Widget>[
//             Container(
//               height: 25,
//               margin: EdgeInsets.only(top: 30),
//               padding: EdgeInsets.only(left: 25),
//               child: DefaultTabController(
//                 length: 3,
//                 child: TabBar(
//                     labelPadding: EdgeInsets.all(0),
//                     indicatorPadding: EdgeInsets.all(0),
//                     isScrollable: true,
//                     labelColor: Colors.black,
//                     unselectedLabelColor: Colors.grey,
//                     labelStyle: GoogleFonts.openSans(
//                         fontSize: 14, fontWeight: FontWeight.w700),
//                     unselectedLabelStyle: GoogleFonts.openSans(
//                         fontSize: 14, fontWeight: FontWeight.w600),
//                     tabs: [
//                       Tab(
//                         child: Container(
//                           margin: EdgeInsets.only(right: 23),
//                           child: Text('New'),
//                         ),
//                       ),
//                       Tab(
//                         child: Container(
//                           margin: EdgeInsets.only(right: 23),
//                           child: Text('Trending'),
//                         ),
//                       ),
//                       Tab(
//                         child: Container(
//                           margin: EdgeInsets.only(right: 23),
//                           child: Text('Best Seller'),
//                         ),
//                       )
//                     ]),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 21, bottom: 20),
//               height: 210,
//               child: ListView.builder(
//                 padding: EdgeInsets.only(left: 25, right: 6),
//                 // itemCount: newBookData.length,
//                 physics: BouncingScrollPhysics(),
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     // margin antar buku
//                     margin: EdgeInsets.only(right: 19),
//                     height: 210,
//                     width: 153,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.blue.shade50,
//                         image: DecorationImage(
//                           image: AssetImage('assets/images/img_newbook1.png'),
//                           // book[index].image
//                         )),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


























// /* ICON NAVIGATION 1 */
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<HomeScreen> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     // indeks berubah sesuai widget ini dan akan dijalankan di body
//     Text(
//       'Index 0: Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1: Business',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 2: School',
//       style: optionStyle,
//     ),
//   ];

//   // merubah state indeks sesuai indeks yang di tap/klik
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   /* ICON NAVIGATION 1 */
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Salamander'),
//         centerTitle: true,
//         backgroundColor: Colors.orange,
//       ),
//       body: Container(
//         color: Colors.grey.shade100,
//         child: Center(
//           child: _widgetOptions.elementAt(_selectedIndex),
//         ),
//       ),
//       //SOURCE CODE IKON NAVIGASI
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: Colors.grey.shade100,
//         items: <Widget>[
//           Icon(Icons.add, size: 30),
//           Icon(Icons.list, size: 30),
//           Icon(Icons.compare_arrows, size: 30),
//         ],
//         onTap: (index) {
//           _onItemTapped(index); //Handle button tap
//         },
//       ),
//     );
//   } // Akhir Ikon Navigasi1

//   /* ICON NAVIGATION 2 */
//   // @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     appBar: AppBar(
//   //       title: const Text('BottomNavigationBar Sample'),
//   //     ),
//   //     body: Center(
//   //       child: _widgetOptions.elementAt(_selectedIndex),
//   //     ),
//   //     bottomNavigationBar: BottomNavigationBar(
//   //       items: const <BottomNavigationBarItem>[
//   //         BottomNavigationBarItem(
//   //           icon: Icon(Icons.home),
//   //           label: 'Home',
//   //         ),
//   //         BottomNavigationBarItem(
//   //           icon: Icon(Icons.business),
//   //           label: 'Business',
//   //         ),
//   //         BottomNavigationBarItem(
//   //           icon: Icon(Icons.school),
//   //           label: 'School',
//   //         ),
//   //       ],
//   //       currentIndex: _selectedIndex,
//   //       selectedItemColor: Colors.amber[800],
//   //       onTap: _onItemTapped, //memilih item dengan indeks yang di tap
//   //     ),
//   //   );
//   // }
// }

/* ICON NAVIGATION 2 */
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Salamander'),
//         centerTitle: true,
//       ),
//       body: Container(
//         color: Colors.grey.shade100,
//       ),
//       //SOURCE CODE IKON NAVIGASI
//       // https://pub.dev/packages/curved_navigation_bar
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: Colors.grey.shade100,
//         items: <Widget>[
//           Icon(Icons.add, size: 30),
//           Icon(Icons.list, size: 30),
//           Icon(Icons.compare_arrows, size: 30),
//         ],
//         onTap: (index) {
//           //Handle button tap
//         },
//       ),
//     );
//   }
// }
