import 'package:cooking_app/view/search_screen.dart';
import 'package:cooking_app/widget//mealTime.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cooking_app/widget/recipelistview.dart';

class MainHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.black87,
          ),
          onPressed: () {
            print('object');
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SearchBarS()));
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.reorder,
              color: Colors.black87,
            ),
            onPressed: () {},
          )
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Your everyday",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "recipe",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 300.0,
              child: RecipeListViewList(),
            ),
            SizedBox(
              height: 20.0,
            ),
            MealPlan(
              Sindex: 'Lunch',
            ),
            MealPlan(
              Sindex: 'Breakfast',
            ),
            MealPlan(
              Sindex: 'Diner',
            ),
          ]),
        ),
      ),
    );
  }
}
