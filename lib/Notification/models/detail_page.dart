import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'vertikal_list.dart';
// import 'package:carousel_slider/carousel_slider.dart';

class detailPage1 extends StatelessWidget {
  const detailPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('ini page 3'),
    );
  }
}

class detailPage2 extends StatelessWidget {
  const detailPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.orange,
          elevation: 0,
          title: Text("Notification")),
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
                        image: AssetImage('./assets/images/pageboy2.jpg'),
                        fit: BoxFit.cover)),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 0, top: 25),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'SENJA HUJAN & CERITA YANG TELAH USAI',
                          style: GoogleFonts.openSans(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.black), //kGreyColor
                        ),
                        Text(
                          'Boy Candra',
                          style: GoogleFonts.openSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.blueGrey), //kGreyColor
                        ),
                      ])),
              Container(
                // margin: EdgeInsets.symmetric(horizontal: 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.orange.shade100),
                height: 50,
                width: 500,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.only(left: 25),
                child: DefaultTabController(
                  length: 2,
                  child: TabBar(
                      // labelPadding: EdgeInsets.all(0),
                      // indicatorPadding: EdgeInsets.all(0),
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
                            margin: EdgeInsets.only(left: 0),
                            child: Text('Description'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: EdgeInsets.only(left: 70),
                            child: Text('Reviewers'),
                          ),
                        ),
                      ]),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 0, top: 25),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Novel “Senja, Hujan dan Cerita yang Telah Usai” diangkat dari pengalaman pribadi penulis. Lewat novelnya, penulis menceritakan segala perjalanan asmaranya. Kisah-kisahnya tersampaikan dengan jelas dan menarik. Pengalamannya dari mulai jatuh cinta, mencintai diam-diam, mencintai sahabat sendiri, bahkan patah hati sangat menyentuh pembacanya. Tak heran jika para Remaja banyak mengutip kata-kata novel ini. Memang dilihat dari pemilihan katanya, sederhana dan mudah dimengerti. Walau dengan pilihan kata yang puitis, namun tidak menimbulkan multi tafsir. Cerita setiap Babnya tidak bertele-tele. Hal ini sangat baik untuk mengontrol penyakit jenuh yang kerap dirasakan pembaca. Boy Candra menyajikan kata-kata sehari-hari yang sering digunakan oleh para pembaca.',
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.openSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black), //kGreyColor
                        ),
                      ])),
            ],
          ),
        ),
      ),
    );
  }
}

class detailPage3 extends StatelessWidget {
  const detailPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('ini page 3'),
    );
  }
}

class detailPage4 extends StatelessWidget {
  const detailPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('ini page 3'),
    );
  }
}

class detailPage5 extends StatelessWidget {
  const detailPage5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('ini page 3'),
    );
  }
}
