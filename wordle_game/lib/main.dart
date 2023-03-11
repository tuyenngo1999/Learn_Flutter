import 'package:flutter/material.dart';
import 'package:wordle_game/foods_page.dart';
import 'category_page.dart';
import 'package:google_fonts/google_fonts.dart';

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
        '/FoodsPage':(context) => FoodsPage(),
        '/CategoriesPage' : (context) => CategoryPage()
      },
      theme:  ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:  Text('Food \'s categories',
          style: GoogleFonts.pacifico(),
          ),
        ),
        body: SafeArea(child:CategoryPage()),
      ),
    );
  }
}