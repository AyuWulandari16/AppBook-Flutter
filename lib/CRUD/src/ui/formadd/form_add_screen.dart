// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';

class FormScreen extends StatefulWidget {
  String id;
  String name;
  String account;
  int age = 1;

  FormScreen({this.id = "", this.name = "", this.account = "", this.age = 0});
  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerAccount = TextEditingController();
  TextEditingController _controllerAge = TextEditingController();

  @override
  void iniState() {
    _controllerName.text = widget.name;
    _controllerAccount.text = widget.account;
    _controllerAge.text = widget.age.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Form'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText: 'Name'),
                keyboardType: TextInputType.text,
                controller: _controllerName,
              ),
              Padding(padding: const EdgeInsets.only(top: 8)),
              TextField(
                decoration: InputDecoration(hintText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                controller: _controllerAccount,
              ),
              Padding(padding: const EdgeInsets.only(top: 8)),
              TextField(
                decoration: InputDecoration(hintText: 'Age'),
                keyboardType: TextInputType.number,
                controller: _controllerAge,
              ),
              Padding(padding: const EdgeInsets.only(top: 8)),

              widget.id == null
                  ? RaisedButton(
                      child: Text('Update Changes'),
                      onPressed: () {
                        // String name = _controllerName.text.toString().trim();
                        // String email = _controllerEmail.text.toString().trim();
                        // int age = _controllerAge.text.toString().isEmpty
                        //     ? 0
                        //     : _controllerAge.text.toString() as int;
                        // if (name.isEmpty) {
                        //   showSnackbarMassage('Name is required');
                        // } else if (email.isEmpty) {
                        //   showSnackbarMassage('Email is required');
                        // } else if (age == 0) {
                        //   showSnackbarMassage('Age is required');
                        // } else {
                        //   showSnackbarMassage('Validation success');
                        // }
                      })
                  : RaisedButton(child: Text('Submit'), onPressed: () {}
                      // {String name = _controllerName.text.toString().trim();
                      //   String email = _controllerEmail.text.toString().trim();
                      //   int age = _controllerAge.text.toString().isEmpty
                      //       ? 0
                      //       : _controllerAge.text.toString() as int;
                      //   if (name.isEmpty) {
                      //     showSnackbarMassage('Name is required');
                      //   } else if (email.isEmpty) {
                      //     showSnackbarMassage('Email is required');
                      //   } else if (age == 0) {
                      //     showSnackbarMassage('Age is required');
                      //   } else {
                      //     showSnackbarMassage('Validation success');
                      //   }},
                      ),
              // RaisedButton(
              //   onPressed: () {},
              //   child: Text('Submit'),
              // )

              // PrimaryButton(
              //   title: "Submit",
              //   onPressed: () {
              //     var _ControllerName;
              //     String name = _ControllerName.text.toString().trim();
              //     String email = _ControllerName.text.toString().trim();
              //   },
              // ),
              // SizedBox(
              //   width: 2.0,
              // ),
            ],
          ),
        ),
      ),
    );
  }

  // void showSnackbarMassage(String message) {
  //   Scaffold.of(context).showSnackBar(SnackBar(content: Text(message)));
  // }
}
