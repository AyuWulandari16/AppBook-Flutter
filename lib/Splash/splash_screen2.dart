/* SPLASHSCREEN MANUAL */

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project_uas/Login_Firbase/screens/signin_screen.dart';

class SplashScreen2 extends StatefulWidget {
  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override

  //Memindahkan dari halaman splashscreen ke home screen
  void initState() {
    // TODO: implement initState
    super.initState();
    //durasi splashscreen
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => SignInScreen())); //pemindahan
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, //agar child berada di posisi tengah
          children: [
            Image.asset(
              './assets/images/wb.png',
              width: 200,
              height: 200,
            ),
            Text(
              'WebBook',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
