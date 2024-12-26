import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});
final String category = 'Editor\'s choice';
final String title = 'The art of Dough';
final String description= 'Learn to make Perfect Bread';
final String chef = 'Deepak Gautam';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag1.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Text(
              category,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
           
            Positioned(
              top: 20,
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
              
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(
                description,
                style: const TextStyle(
                  color: Color.fromARGB(255, 7, 60, 1),
                  fontSize: 18
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: Text(
                chef,
                style: const TextStyle(
                  color: Color.fromARGB(255, 43, 12, 12),
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}