import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'myhomepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //debugPaintSizeEnabled = true;
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.red,
      // ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}