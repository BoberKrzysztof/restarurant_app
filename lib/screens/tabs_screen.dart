import 'package:flutter/material.dart';
import 'package:restarurant_app/screens/categories_screen.dart';
import 'package:restarurant_app/screens/home_screen.dart';
import './favourites_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cart_screen.dart';

class TabScreen extends StatefulWidget {
  @override
 _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'page': HomeScreen(),
      'title': 'Home',
    },
    {
      'page': CategoriesScreen(),
      'title': 'Categories',
    },
    {
      'page': CartScreen(),
      'title': 'Cart',
    },
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title'] as String),
      ),
      // drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: GNav(
            textStyle: GoogleFonts.montserratAlternates(
              color: Colors.purpleAccent,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            backgroundColor: Colors.black,
            color: Colors.purple,
            activeColor: Colors.purpleAccent,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8,
            padding: EdgeInsets.all(16),
            onTabChange: _selectPage,
            tabs: [
              GButton(icon: Icons.home, text: 'Home',),
              GButton(icon: Icons.category, text: 'Categories',),
              GButton(icon: Icons.shopping_cart, text: 'Cart',),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   onTap: _selectPage,
      //   currentIndex: _selectedPageIndex,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.category),
      //       label: 'Categories',
      //       backgroundColor: Theme.of(context).primaryColor,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.star),
      //       label: 'Favourites',
      //       backgroundColor: Theme.of(context).primaryColor,
      //     )
      //   ],  // items
      // ),
    );
  }

}