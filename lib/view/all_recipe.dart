import 'package:cooking_app/data/data.dart';
import 'package:cooking_app/model/recipe_object.dart';
import 'package:cooking_app/view/RecipeD.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AllRecipe extends StatelessWidget {
  final String RecipeCatagory;
  final int RecipeIndex;
  AllRecipe({this.RecipeCatagory, this.RecipeIndex});
  @override
  Widget build(BuildContext context) {
    final recipeList =
        Provider.of<RecipeData>(context).findCatagory(RecipeCatagory);
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
                    itemCount: recipeList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, RecipeD.pageRouts,
                                arguments: RecipeIndex);
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
                                                recipeList[index].image),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        height: 150.0,
                                        width: 150.0,
                                      ),
                                      Text(
                                        recipeList[index].title,
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
