import 'package:flutter/material.dart';
import '../data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(15),
      children: DATA.map(
            (catData) => CategoryItem(
            catData.id,
            catData.title,
            catData.color
          ),
      ).toList(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 4.6,
        mainAxisSpacing: 20,
      ),
    );
  }
}