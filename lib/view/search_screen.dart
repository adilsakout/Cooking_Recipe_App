import 'package:cooking_app/data/data.dart';
import 'package:cooking_app/model/recipe_object.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';

class SearchBarS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: SearchBar(
              onSearch: search,
              onItemFound: (Recipe recipe, int index) {
                return ListTile(
                  title: Text(RecipeData[index].title),
                );
              },
            )),
      ),
    );
  }
}

Future<List<Recipe>> search(String search) async {
  await Future.delayed(Duration(seconds: 2));
  return List.generate(search.length, (int index) {
    return Recipe(title: '$RecipeData[index].title $search');
  });
}
