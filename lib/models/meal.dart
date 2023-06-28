import 'package:flutter/material.dart';

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final int price;
  final bool isVegetarian;

  Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.price,
    required this.isVegetarian,
  });

  // usunac
  Map toJson() {
    return {
      'id': id,
      'categories': categories,
      'title' : title,
      'imageUrl': imageUrl,
      'ingredients' : ingredients,
      'price': price,
      'isVegetarian' : isVegetarian,
    };
  }
//

}