import 'package:cooking_app/data/data.dart';
import 'package:cooking_app/view/RecipeD.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MealPlan extends StatelessWidget {
  final int ListIndex;
  final String Sindex;
  MealPlan({this.ListIndex, this.Sindex});
  @override
  Widget build(BuildContext context) {
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
                    decoration: TextDecoration.underline,
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
                itemCount: RecipeData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RecipeD(
                                    RecipeTitle: RecipeData[index].title,
                                    CookingTime: RecipeData[index].CookingTime,
                                    ImageLink: RecipeData[index].image,
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
                                image: AssetImage(RecipeData[index].image),
                                fit: BoxFit.cover,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            height: 150.0,
                            width: 150.0,
                          ),
                          Text(
                            RecipeData[index].title,
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
