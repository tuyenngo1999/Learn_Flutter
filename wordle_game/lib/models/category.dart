import 'package:flutter/material.dart';

class CategoryInfo
{
  final int id;
  final String content;
  final Color color;

  CategoryInfo({required this.id, required this.content, required this.color});
  @override
  String toString() {
    // TODO: implement toString
    return 'id : $id , content : $content , color : $color';
  }
}
