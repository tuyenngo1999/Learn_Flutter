import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'category_page.dart';
import 'models/category.dart';

class FoodsPage extends StatelessWidget
{
  FoodsPage();
  static const String routeName = '/FoodsPage';
  @override
  Widget build(BuildContext context) {

    //CategoryInfo categoryInfo = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Foods from category'),
      ),
      body: Center(
        child: Text('hello'),
      ),
    );
  }
}