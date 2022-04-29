import 'package:flutter/material.dart';

import '../../Models/meals.dart';
import '../Widgets/meal_item.dart';

class favoritesScreen extends StatelessWidget {
  // const favoritesScreen({ Key? key }) : super(key: key);
  final List<Meal> favoriteMeals;

  favoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return const Center(
        child: Text('You have no favorites yet - start adding some!'),
      );
    }
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return MealItem(
            // removeItem: _removeItem,
            id: favoriteMeals[index].id,
            title: favoriteMeals[index].title,
            imageUrl: favoriteMeals[index].imageUrl,
            duration: favoriteMeals[index].duration,
            complexity: favoriteMeals[index].complexity,
            affordability: favoriteMeals[index].affordability);
      },
      itemCount: favoriteMeals.length,
    );
  }
}
