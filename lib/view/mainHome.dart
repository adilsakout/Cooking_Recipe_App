import 'package:cooking_app/data/data.dart';
import 'package:cooking_app/view/RecipeD.dart';
import 'package:cooking_app/view/search_screen.dart';
import 'package:cooking_app/widget//mealTime.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: RecipeData.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RecipeD(
                                RecipeTitle: RecipeData[index].title,
                                ImageLink: RecipeData[index].image,
                                CookingTime: RecipeData[index].CookingTime,
                                Ingredient: RecipeData[index].ingredient,
                                Preparation: RecipeData[index].preparation,
                              ),
                            ));
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10.0),
                        height: 250.0,
                        width: 230.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: ClipRRect(
                                child: Image(
                                  image: AssetImage(RecipeData[index].image),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              height: 200,
                              width: 230,
                            ),
                            Text(
                              RecipeData[index].title,
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              RecipeData[index].CookingTime.toString() + ' Min',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
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
