import 'package:flutter/material.dart';
import 'package:project_uas/CRUD/src/api/api_service.dart';
import 'package:project_uas/CRUD/src/model/profile.dart';

import '../formadd/form_add_screen.dart';

// var _scaffoldState = Globalkey<ScaffoldState>();

// class Globalkey {
// }

class HomeScren extends StatefulWidget {
  @override
  State<HomeScren> createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // key: _scaffoldState,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Reacted your account | AS CRUD'),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FormScreen();
                }));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.add),
              ),
            )
          ],
        ),
        body: SafeArea(
          child: FutureBuilder(
            future: getPosts(),
            builder: (context, snapshoot) {
              if (snapshoot.hasError) {
                return Center(
                  child: Text(snapshoot.error.toString()),
                );
              } else if (snapshoot.connectionState == ConnectionState.done) {
                var response = snapshoot.data as List<Post>;
                return ListView.builder(
                  itemCount: response.length,
                  itemBuilder: (context, position) {
                    var postItem = response[position];
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            //agar tulisan kekiri
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(
                                postItem.name,
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              Text(
                                postItem.account,
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              Text(
                                postItem.age.toString(),
                                style: Theme.of(context).textTheme.subtitle2,
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ));
  }
}
