import 'package:flutter/material.dart';
import 'package:recepie_app/cards/card1.dart';
import 'package:recepie_app/cards/card2.dart';
import 'package:recepie_app/cards/card3.dart';
import 'package:recepie_app/components/component.dart';

class TodayRecipeListView extends StatelessWidget {
  final List<ExploreRecipe> recipes;

  const TodayRecipeListView({
    super.key,
    required this.recipes,
  });

  @override
  Widget build(BuildContext context) {
    if (recipes.isEmpty) {
      return Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Text(
            "No recipes available today!",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recipes Of The Day",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 16),
          Container(
            height: 400,
            color: Colors.transparent,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                final recipe = recipes[index];
                return buildCard(recipe);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 16);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(ExploreRecipe recipe) {
    if (recipe.cardType == RecipeCardType.card1) {
      return Card1(recipe: recipe);
    } else if (recipe.cardType == RecipeCardType.card2) {
      return Card2(recipe: recipe);
    } else if (recipe.cardType == RecipeCardType.card3) {
      return Card3(recipe: recipe);
    } else {
      return Container(
        width: 200,
        height: 300,
        alignment: Alignment.center,
        color: Colors.grey.shade200,
        child: Text("Card type not supported"),
      );
    }
  }
}
