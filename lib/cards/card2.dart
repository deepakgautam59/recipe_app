import 'package:flutter/material.dart';
import 'package:recepie_app/cards/authorcard.dart';
import 'package:recepie_app/models/explore_recipe.dart';


class Card2 extends StatelessWidget {
  const Card2({super.key, required ExploreRecipe recipe});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/cup.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          )
        ),
        child: const Column(
          children: [
            AuthorCard(
              authorName: 'Deepak Gautam',
              title: 'Smoothie Connoisseur',
              imageProvider: AssetImage('assets/myimage.jpg'),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 45,
                    right: 16,
                    child: Text(
                      'Recipie',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 20,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothie',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromRGBO(111, 8, 67, 0.767),
                          fontWeight: FontWeight.w800
                        ),
                      ),
                    ),
                  )
                ],
              ),

            )
          ],
        ),

      ),
      
    );
  }
}