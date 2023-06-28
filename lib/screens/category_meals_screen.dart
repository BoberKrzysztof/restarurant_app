import 'package:flutter/material.dart';
import 'package:restarurant_app/widgets/meal_item.dart';
import '../data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final String? categoryId = routeArgs['id'];
    final String? categoryTitle = routeArgs['title'];
    final categoryMeals = MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: categoryMeals[index].id,
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            price: categoryMeals[index].price,
            isVegetarian: categoryMeals[index].isVegetarian,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}