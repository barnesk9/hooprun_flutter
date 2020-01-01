import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _signupState createState() => _signupState();
}

List<Widget> getTextFields() {
  List<Widget> fields = new List<Widget>();

  for (int i = 0; i < 20; i++) {
    fields.add(Padding(
        padding: EdgeInsets.only(top: 20, left: 10, bottom: 10, right: 10),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none, hintText: 'Enter a search term'),
        )));
  }

  return fields;
}

class _signupState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: getTextFields(),
    ));
  }
}
