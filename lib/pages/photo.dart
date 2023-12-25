import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Photopage extends StatefulWidget {
  String args = '';
  Photopage(String text){
    this.args = text;
  }

  @override
  State<StatefulWidget> createState() {
    return _Photopage(args);
  }
}






class _Photopage extends State<Photopage> {
  String args ='';
  _PhotoState(String text){
    this.args = text;
  }
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments;

    return Scaffold(
      appBar: AppBar(title: Text('Photo show')),
      body: Text(args.toString()),
    );
  }
}
