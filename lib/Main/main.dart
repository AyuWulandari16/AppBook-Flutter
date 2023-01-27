import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:project_uas/Notification/models/detail_page.dart';
import 'package:project_uas/Splash/splash_screen2.dart';
import 'package:project_uas/Navigasi/navigasi.dart';
import 'package:project_uas/CRUD/src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
      // Halaman pertama di arahkan ke splashscreen
      home: SplashScreen2(),
      // Navigate with named route
      initialRoute: '/',
      routes: {
        '/page1': (context) => crud(),
        '/page2': (context) => const detailPage2(),
        '/page3': (context) => const detailPage3(),
        '/page4': (context) => const detailPage4(),
        '/page5': (context) => const detailPage5(),
      },
    );
  }
}
















































































































































































































// import 'package:flutter/material.dart';

// void main() {
//   // debugPaintSizeEnabled = true;
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Widget titleSection = Container(
//       padding: const EdgeInsets.all(32),
//       child: Row(
//         children: [
//           Expanded(
//             /*1*/
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 /*2*/
//                 Container(
//                   padding: const EdgeInsets.only(bottom: 8),
//                   child: const Text(
//                     'Wisata Teluk Ijo',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Text(
//                   'Banyuwangi, Jawa Timur',
//                   style: TextStyle(
//                     color: Colors.grey[500],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           /*3*/
//           Icon(
//             Icons.star,
//             color: Colors.red[500],
//           ),
//           const Text('99+'),
//         ],
//       ),
//     );

//     Color color = Theme.of(context).primaryColor;

//     Widget buttonSection = Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         _buildButtonColumn(color, Icons.call, 'CALL'),
//         _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
//         _buildButtonColumn(color, Icons.share, 'SHARE'),
//       ],
//     );

//     Widget textSection = const Padding(
//       padding: EdgeInsets.all(32),
//       child: Text(
//         'Tak disangka ternyata Banyuwangi menyimpan banyak pesona wisata yang sangat indah. Salah satunya adalah pesona teluk hijau Sarongan Pesanggaran Banyuwangi Jawa Timur atau populer juga disebut Green Bay Banyuwangi. Keistimewaan pantai ini karena air lautnya berwarna hijau di tepian kemudian membiru begitu ketengah lautan. Dengan pasir putih yang bersih, kalian seperti sedang berwisata di pantai Lombok dan Bali. ',
//         softWrap: true,
//       ),
//     );

//     return MaterialApp(
//       title: 'Flutter layout demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Flutter layout demo'),
//         ),
//         body: ListView(
//           children: [
//             Image.asset(
//               'images/telukijo.webp',
//               width: 600,
//               height: 240,
//               fit: BoxFit.cover,
//             ),
//             titleSection,
//             buttonSection,
//             textSection,
//           ],
//         ),
//       ),
//     );
//   }

//   Column _buildButtonColumn(Color color, IconData icon, String label) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Icon(icon, color: color),
//         Container(
//           margin: const EdgeInsets.only(top: 8),
//           child: Text(
//             label,
//             style: TextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.w400,
//               color: color,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }





