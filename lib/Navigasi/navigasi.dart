import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:project_uas/Home/home_screen.dart';
import 'package:project_uas/Library/perpustakaan.dart';
import 'package:project_uas/Notification/notification.dart';
import 'package:project_uas/Search/search2.dart';
import 'package:project_uas/CRUD/src/app.dart';

/* ICON NAVIGATION 1 */
class Navigasi extends StatefulWidget {
  const Navigasi({Key? key}) : super(key: key);

  @override
  State<Navigasi> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Navigasi> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    // indeks berubah sesuai widget ini dan akan dijalankan di body
    HomeScreen(),
    search2(),
    perpustakaan(),
    // crud(),
    notification(),
  ];

  // merubah state indeks sesuai indeks yang di tap/klik
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  /* ICON NAVIGATION 1 */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebBook'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Container(
        color: Colors.grey.shade100,
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      //SOURCE CODE IKON NAVIGASI
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.orange,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.book_sharp, size: 30),
          // Icon(Icons.work_outline, size: 30),
          Icon(Icons.notifications, size: 30),
        ],
        onTap: (index) {
          _onItemTapped(index); //Handle button tap
        },
      ),
    );
  }
} // Akhir Ikon Navigasi1