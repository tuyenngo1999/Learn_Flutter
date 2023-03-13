import 'dart:math';

import 'package:flutter/cupertino.dart';

class Food
{
  int id = 0;
  String name;
  String urlImage;
  Duration duration;  //time to finish this food
  Complexity complexity;
  int categoryId;

  Food(this.name, this.urlImage, this.duration, this.complexity,this.categoryId){
    //id is auto
    this.id = Random().nextInt(1000);
  }

  List ingredients = <String>[];
}

enum Complexity {
  Simple,
  Medium,
  Hard
}