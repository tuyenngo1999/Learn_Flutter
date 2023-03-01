import 'package:flutter/material.dart';

class MyApp  extends StatelessWidget
{
  String name = "";
  int age = 0;
  MyApp({required this.name,required this.age});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
          'name : $name , age : $age',
          style: TextStyle(fontSize: 30),
          textDirection: TextDirection.ltr),
    );
  }

}