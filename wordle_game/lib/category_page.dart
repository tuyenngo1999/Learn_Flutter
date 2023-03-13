import 'package:flutter/material.dart';
import 'package:wordle_game/category_item.dart';
import 'package:wordle_game/fake_data.dart';

class CategoryPage extends StatelessWidget {
  static const String routeName = '/CategoriesPage';

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding:const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 4/3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      children: FAKE_CATEGORIES.map((eachCategory) => CategoryItem(category: eachCategory)).toList(),
    );
  }
}
