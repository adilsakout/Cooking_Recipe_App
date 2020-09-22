import 'package:cooking_app/data/data.dart';
import 'package:cooking_app/view/RecipeD.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/recipe_object.dart';

class RecipeListViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final recipeData = Provider.of<RecipeData>(context);
    final recipeList = recipeData.iteam;
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: recipeList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RecipeD.pageRouts,
                  arguments: recipeList[index].id);
              print(recipeList[index].id);
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
                        image: AssetImage(recipeList[index].image),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    height: 200,
                    width: 230,
                  ),
                  Text(
                    recipeList[index].title,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    recipeList[index].CookingTime.toString() + ' Min',
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
        });
  }
}
