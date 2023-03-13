import 'package:flutter/material.dart';
import 'package:wordle_game/foods_page.dart';
import 'category_page.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App With navigation',
      initialRoute: '/',
      routes: {
        FoodsPage.routeName:(context) => FoodsPage(),
        CategoryPage.routeName : (context) => CategoryPage()
      },
      theme:  ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:  const Text('Food \'s categories'),
        ),
        body: SafeArea(child:CategoryPage()),
      ),
    );
  }
}