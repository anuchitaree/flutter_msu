import 'package:firstapp/pages/home.dart';
import 'package:firstapp/pages/photo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Homepage(),
      routes:{
        '/photo-page':(context)=> Photopage()
      },
    );
  }
}
