import 'package:cooking_app/data/data.dart';
import 'package:cooking_app/model/recipe_object.dart';
import 'package:cooking_app/view/RecipeD.dart';
import 'package:cooking_app/view/all_recipe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class MealPlan extends StatelessWidget {
  final String Sindex;
  MealPlan({this.Sindex});

  @override
  Widget build(BuildContext context) {
    final recipeList =  Provider.of<RecipeData>(context).findCatagory(Sindex) ;
    return Container(
      height: 250.0,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '  ${Sindex}',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              GestureDetector(
                child: Text(
                  'VIEW ALL',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15.0,
                    color: Color(0xAA34c47c),
                  ),
                ),
                onTap: () {
                  //navigate to the detail page
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AllRecipe(
                                RecipeCatagory: Sindex,
                              )));
                },
              )
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 200.0,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: recipeList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RecipeD.pageRouts ,arguments: recipeList[index].id) ;
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 10.0),
                      height: 200.0,
                      width: 150.0,
                      child: Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              child: Image(
                                image: AssetImage(recipeList[index].image),
                                fit: BoxFit.cover,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            height: 150.0,
                            width: 150.0,
                          ),
                          Text(
                            recipeList[index].title,
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
