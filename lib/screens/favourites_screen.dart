// import 'package:flutter/cupertino.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Meal> favouiteMeals;

  FavouritesScreen(this.favouiteMeals);

  @override
  Widget build(BuildContext context) {
    if (favouiteMeals.isEmpty) {
      return Center(
        child: Text('You have no favourites yet - start adding some.'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favouiteMeals[index].id,
            title: favouiteMeals[index].title,
            imageUrl: favouiteMeals[index].imageUrl,
            duration: favouiteMeals[index].duration,
            affordability: favouiteMeals[index].affordability,
            complexity: favouiteMeals[index].complexity,
            // removeItem: _removeMeal,
          );
        },
        itemCount: favouiteMeals.length,
      );
    }
  }
}
