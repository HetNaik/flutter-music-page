import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //fontFamily:'LeonSans',
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
