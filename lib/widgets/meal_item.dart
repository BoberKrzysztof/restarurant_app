import 'package:flutter/material.dart';
import '../data.dart';
import '../models/meal.dart';
import '../screens/meal_detail_screen.dart';
import 'package:google_fonts/google_fonts.dart';


class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int price;
  final bool isVegetarian;

  MealItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.isVegetarian,
  });

  void selectMeal(BuildContext context) {
    Navigator.of(context).pushNamed(
        MealDetailScreen.routeName,
        arguments: id
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        margin: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child:  Image.network(
                      imageUrl,
                      height: 230,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )
                ),
                Positioned(
                  bottom: 10,
                  right: 0,
                  child: Container(
                      width: 300,
                      color: Colors.black54,
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 20,
                      ),
                      child: Text(
                          title,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: GoogleFonts.montserratAlternates().fontFamily,
                          )
                      )
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.attach_money,),
                      SizedBox(width: 1,),
                      Text('$price PLN     '),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      if(isVegetarian==true)
                        Text('Vegetarian'),
                      SizedBox(width: 1,),
                      if(isVegetarian==true)
                        Icon(Icons.check_circle_outline),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.shopping_cart),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}