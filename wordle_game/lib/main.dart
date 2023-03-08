import 'package:flutter/material.dart';
import 'package:wordle_game/MyApp02.dart';
import 'MyApp.dart';
import 'mylistview.dart';

void main() {
  runApp(
      //MyApp(name: 'tuyen', age: 20),
      MaterialApp(
        title: "Transaction App",
        theme: ThemeData(
          primaryColor: Colors.green[300]
        ),
        home: MyApp02(),
      )
  );
}

