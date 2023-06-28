import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restarurant_app/screens/cart_screen.dart';
import 'package:restarurant_app/screens/category_meals_screen.dart';
import 'package:restarurant_app/screens/home_screen.dart';
import 'package:restarurant_app/screens/meal_detail_screen.dart';
import 'screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.montserratAlternates().fontFamily,
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: TextStyle(
            fontSize: 20,
          ),
        ),
      ),

      initialRoute: '/',
      routes: {
        '/': (ctx) => TabScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => HomeScreen(),);
      },
    );
  }
}