import 'package:cooking_app/data/data.dart';
import 'package:cooking_app/model/recipe_object.dart';
import 'package:cooking_app/view/RecipeD.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MealPlan extends StatelessWidget {
  final String Sindex;
  MealPlan({this.Sindex});

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
    if (Sindex == 'Lunch') {
      FoodList = Lunch;
    } else if (Sindex == 'Breakfast') {
      FoodList = Breakfast;
    } else {
      FoodList = Diner;
    }
    ;
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
                itemCount: FoodList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RecipeD(
                                    RecipeTitle: FoodList[index].title,
                                    CookingTime: FoodList[index].CookingTime,
                                    ImageLink: FoodList[index].image,
                                    Index: index,
                                  )));
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
                                image: AssetImage(FoodList[index].image),
                                fit: BoxFit.cover,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            height: 150.0,
                            width: 150.0,
                          ),
                          Text(
                            FoodList[index].title,
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
