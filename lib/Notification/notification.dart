import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:project_uas/Login_Firbase/screens/signin_screen.dart';

class notification extends StatefulWidget {
  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Text(
            'Notification',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          trailing: CircleAvatar(
              backgroundColor: Colors.grey.shade300,
              child: Icon(
                Icons.search,
                color: Colors.black,
              )),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: <Widget>[
            SizedBox(
              width: 15,
            ),
            Text(
              'Earlier',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            )
          ],
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/me.jpeg'),
          ),
          title: Text('Someone has reacted to your post'),
          trailing: Icon(Icons.menu),
          onTap: () {
            Navigator.pushNamed(context, '/page1');
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/pageboy1.jpg'),
          ),
          title: Text('Boy Candra writes a new book'),
          trailing: Icon(Icons.menu),
          onTap: () {
            Navigator.pushNamed(context, '/page2');
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/page3.jpg'),
          ),
          title: Text('5 bestseller book recommendation for you'),
          trailing: Icon(Icons.menu),
          onTap: () {
            Navigator.pushNamed(context, '/page3');
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/cod3.webp'),
          ),
          title: Text('Are you interested books about programing?'),
          trailing: Icon(Icons.menu),
          onTap: () {
            Navigator.pushNamed(context, '/page4');
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/page5.jpg'),
          ),
          title: Text('The latest book on psychology'),
          trailing: Icon(Icons.menu),
          onTap: () {
            Navigator.pushNamed(context, '/page5');
          },
        ),
        ElevatedButton(
          child: Text("Logout"),
          onPressed: () {
            FirebaseAuth.instance.signOut().then((value) {
              print("Signed Out");
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignInScreen()));
            });
          },
        ),
      ],
    );
  }
}
