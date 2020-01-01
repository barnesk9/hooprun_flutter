import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'signup.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  dynamic nextPage()
  {
      Navigator.of(context)
        .push(MaterialPageRoute<Null>
          (
            builder: (BuildContext context) 
            {
            return new MyHomePage();
            }));
  }

  dynamic signUpPage()
  {
      Navigator.of(context)
        .push(MaterialPageRoute<Null>
          (
            builder: (BuildContext context) 
            {
            return new SignUp();
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top:200,left:10, bottom:10, right:10),
                 child:
                 Row(children: [
                  Image.asset(
                  'images/hooprunLogoWhite.png',
                  width: MediaQuery.of(context).size.width-20,
                  height: MediaQuery.of(context).size.height*.3,
                  fit: BoxFit.fill,
                )
              ]
            )
          ),
              //Text(
              //'You have pushed the button this many times:',
              //),
              //Text(
              //'$_counter',
              //style: Theme.of(context).textTheme.display1,
              //),
              Wrap(
                runSpacing: 40,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width*.92,
                      height: MediaQuery.of(context).size.height*.1,
                      child: RaisedButton(
                        onPressed: nextPage,
                      )),
                  ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width*.92,
                      height: MediaQuery.of(context).size.height*.1,
                      child: RaisedButton(
                        onPressed: signUpPage,
                      )),
                ],
              ),
            ])); // This trailing comma makes auto-formatting nicer for build methods.
  }
}