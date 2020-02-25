// import 'package:KGC/Widget/registerBottom.dart';
// import 'package:KGC/Widget/registerHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Widget/background.dart';
import 'Widget/BodyParts.dart';
import 'Widget/registerBottom.dart';
//import 'Widget/registerHeader.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // VARIABLE ------------------------------------------------------------\
  bool status = false;

  // BUILDER -------------------------------------------------------------\
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundBody(
        body: Container(
          padding: EdgeInsets.only(top: 100),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              StandardTextFormField(hintText: '                 PHONE NUMBER'),
              SecuredTextFormField(hintText: '                   PASSWORD'),
              SubmitButton(action: () {}, name: 'SIGN IN'),
              Button(action: () {}, name: ''),
            ],
          ),
        ),
      ),
    );
  }
}
