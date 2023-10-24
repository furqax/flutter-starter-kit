import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppNavigator {
  // /// Pushes the [RecipesListPage] to the navigation stack
  // void pushRecipeDetails(RecipeDetailsArgs args);
}

class AppNavigatorImpl implements AppNavigator {
  AppNavigatorImpl(this.context);

  final BuildContext context;

  // @override
  // void pushRecipeDetails(RecipeDetailsArgs args) {
  //   context.pushNamed(
  //     AppRoutes.recipeDetails.name,
  //     extra: args,
  //   );
  // }
}
