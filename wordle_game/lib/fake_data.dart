import 'package:flutter/material.dart';
import 'package:wordle_game/models/food.dart';
import 'models/category.dart';
final FAKE_CATEGORIES = [
  CategoryInfo(id: 1, content: 'JapanFood', color: Colors.deepOrange),
  CategoryInfo(id: 2, content: 'Mon Au', color: Colors.teal),
  CategoryInfo(id: 3, content: 'Viet Nam', color: Colors.pinkAccent),
  CategoryInfo(id: 4, content: 'Phap', color: Colors.blueAccent),
  CategoryInfo(id: 5, content: 'Han Quoc', color: Colors.green),
];

var FAKE_FOODS = [
  Food("sushi", "https://upload.wikimedia.org/wikipedia/commons/c/cf/Salmon_Sushi.jpg", const Duration(minutes: 25), Complexity.Medium, 1),
  Food("tempura", "https://images.pexels.com/photos/357756/pexels-photo-357756.jpeg", const Duration(minutes: 15), Complexity.Simple, 1),
  Food("pizza", "https://images.pexels.com/photos/357756/pexels-photo-357756.jpeg", const Duration(minutes: 20), Complexity.Hard, 2),
  Food("spaheti", "https://images.pexels.com/photos/357756/pexels-photo-357756.jpeg", const Duration(minutes: 10), Complexity.Hard, 2),
  Food("com rang", "https://images.pexels.com/photos/357756/pexels-photo-357756.jpeg", const Duration(minutes: 8), Complexity.Medium, 3),
  Food("banh mi", "https://images.pexels.com/photos/357756/pexels-photo-357756.jpeg", const Duration(minutes: 19), Complexity.Simple, 3),
  Food("pho bo", "https://images.pexels.com/photos/357756/pexels-photo-357756.jpeg", const Duration(minutes: 6), Complexity.Medium, 3),
  Food("potato", "https://images.pexels.com/photos/357756/pexels-photo-357756.jpeg", const Duration(minutes: 19), Complexity.Simple, 4),
  Food("kim chi", "https://images.pexels.com/photos/357756/pexels-photo-357756.jpeg", const Duration(minutes: 6), Complexity.Medium, 5),
];