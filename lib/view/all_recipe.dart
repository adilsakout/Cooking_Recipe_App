import 'package:cooking_app/data/data.dart';
import 'package:cooking_app/model/recipe_object.dart';
import 'package:cooking_app/view/RecipeD.dart';
import 'package:flutter/material.dart';

class AllRecipe extends StatelessWidget {
  final String RecipeCatagory;
  final int RecipeIndex;
  AllRecipe({this.RecipeCatagory, this.RecipeIndex});
  @override
  Widget build(BuildContext context) {
    List<Recipe> Lunch = [];
    List<Recipe> Breakfast = [];
    List<Recipe> Diner = [];
    List<Recipe> FoodList = [];
    for (int i = 0; i < RecipeData.length; i++) {
      if (RecipeData[i].category == 'Lunch') {
        Lunch.add(RecipeData[i]);
      } else if (RecipeData[i].category == 'Breakfast') {
        Breakfast.add(RecipeData[i]);
      } else {
        Diner.add(RecipeData[i]);
      }
    }
    if (RecipeCatagory == 'Lunch') {
      FoodList = Lunch;
    } else if (RecipeCatagory == 'Breakfast') {
      FoodList = Breakfast;
    } else {
      FoodList = Diner;
    }
    ;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                RecipeCatagory,
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                    color: Color(0xAA34c47c)),
              ),
              Text(
                'recipe',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500),
              ),
              Divider(
                height: 30.0,
                thickness: 5.0,
                color: Color(0xAA34c47c),
              ),
              Expanded(
                child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: FoodList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RecipeD(
                                          CookingTime:
                                              FoodList[index].CookingTime,
                                          RecipeTitle: FoodList[index].title,
                                          ImageLink: FoodList[index].image,
                                          Ingredient:
                                              FoodList[index].ingredient,
                                          Preparation:
                                              FoodList[index].preparation,
                                        )));
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: ClipRRect(
                                          child: Image(
                                            image: AssetImage(
                                                FoodList[index].image),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        height: 150.0,
                                        width: 150.0,
                                      ),
                                      Text(
                                        FoodList[index].title,
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
