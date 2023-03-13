import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wordle_game/fake_data.dart';
import 'package:wordle_game/models/food.dart';
import 'category_page.dart';
import 'models/category.dart';

class FoodsPage extends StatelessWidget
{
  CategoryInfo category = CategoryInfo(id: 0, content: '', color: Colors.black);
  //
  //
  // FoodsPage(this.category);
  static const String routeName = '/FoodsPage';
  @override
  Widget build(BuildContext context) {

    Map<String,CategoryInfo> arguments = ModalRoute.of(context)?.settings.arguments as Map<String, CategoryInfo>;
    this.category = arguments['category']!;

    List<Food> foods = FAKE_FOODS.where((food) => food.categoryId == this.category.id).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Foods from category'),
      ),
      body: Center(
        child: Center(
          child: ListView.builder(
            itemCount: foods.length,
            itemBuilder: (context,index){
              Food food = foods[index];
              return ClipRect(
                child: Center(
                  child: FadeInImage.assetNetwork(
                      placeholder: 'assets/images/loading.jpeg',
                      image: food.urlImage
                  ),
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}