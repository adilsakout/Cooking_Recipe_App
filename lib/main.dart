import 'package:cooking_app/view//mainHome.dart';
import 'package:cooking_app/widget/mealTime.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cooking_app/data/data.dart';
import './view/RecipeD.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RecipeData(),
      child: MaterialApp(
        home: MainHome(),
        routes: {
          RecipeD.pageRouts : (context) => RecipeD(),
        },
      ),
    );
  }
}
