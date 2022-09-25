import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        padding: EdgeInsets.only(left: 130, top:140),
        child: Text(
          'Hello user',
          style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontFamily: 'Montserrat'),
        ),
      ),
    );
  }
}
