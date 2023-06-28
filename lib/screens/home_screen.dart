import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.3,
                child: Image.network('https://www.questrmg.com/wp-content/uploads/2019/03/web-banner-Top-Three-Restaurant-Trends.jpg',
                fit: BoxFit.cover),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Container(
                      width: 160,
                      height: 160,
                      color: Colors.purple,
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.restaurant_menu,
                        color: Colors.white,
                        size: 130,
                      ),
                    ),
                  ),
                  SizedBox(height: 6,),
                  Text('Restaurant',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: GoogleFonts.montserratAlternates().fontFamily,
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
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