import 'package:cooking_app/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RecipeD extends StatefulWidget {
  final String RecipeTitle;
  final int CookingTime;
  final String ImageLink;
  final int Index;
  RecipeD({this.CookingTime, this.ImageLink, this.RecipeTitle, this.Index});

  @override
  _RecipeDState createState() => _RecipeDState();
}

Color IconLove = Colors.white;

class _RecipeDState extends State<RecipeD> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          flexibleSpace: Stack(children: [
            Image.asset(
              widget.ImageLink,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    widget.RecipeTitle,
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        backgroundColor: Color(0xAA34c47c)),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xAA34c47c),
                        child: Icon(
                          Icons.access_time,
                          color: Colors.white,
                          size: 40.0,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '${widget.CookingTime.toString()} Min',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0,
                            color: Colors.white,
                            backgroundColor: Color(0xAA34c47c)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ]),
          floating: false,
          pinned: true,
          snap: false,
          expandedHeight: MediaQuery.of(context).size.height,
          collapsedHeight: 200.0,
          actions: [
            CircleAvatar(
              backgroundColor: Colors.blueGrey[100],
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            CircleAvatar(
              backgroundColor: Colors.blueGrey[100],
              child: IconButton(
                onPressed: () {
                  setState(() {
                    IconLove =
                        (IconLove == Colors.red) ? Colors.white : Colors.red;
                  });
                },
                icon: Icon(
                  Icons.favorite,
                  color: IconLove,
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            )
          ],
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: Text(
                      'Ingredient',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25.0,
                          color: Color(0xAA34c47c)),
                    ),
                    elevation: 0.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Divider(
                    height: 1.0,
                    color: Colors.black,
                  )
                ],
              ),
            )
          ]),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.white,
                    child: Card(
                      child: Text(
                        RecipeData[widget.Index].ingredient[index],
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.w700),
                      ),
                      elevation: 0.0,
                    ),
                  ),
              childCount: RecipeData[widget.Index].ingredient.length),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Divider(
              height: 1.0,
              color: Colors.blueGrey[100],
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: Text(
                      'Preparation',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25.0,
                          color: Color(0xAA34c47c)),
                    ),
                    elevation: 0.0,
                  )
                ],
              ),
            ),
            Divider(
              height: 1.0,
              color: Colors.blueGrey[100],
            ),
          ]),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.white,
                    width: 300.0,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 15.0,
                          backgroundColor: Color(0xAA34c47c),
                          child: Text(
                            '${index + 1}',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Card(
                            child: Text(
                              RecipeData[widget.Index].preparation[index],
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.w700),
                            ),
                            elevation: 0,
                          ),
                        )
                      ],
                    ),
                  ),
              childCount: RecipeData[widget.Index].preparation.length),
        )
      ],
    );
  }
}

// class Ingredient extends StatelessWidget {
//   const Ingredient({
//     Key key,
//     @required this.Index,
//   }) : super(key: key);
//
//   final int Index;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: RecipeData[Index].ingredient.length,
//         itemBuilder: (context, index) {
//           return Container(
//             padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Card(
//                   child: Text(
//                     RecipeData[Index].ingredient[index],
//                     style: TextStyle(
//                       color: Colors.black87,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           );
//         });
//   }
// }
//
// class Preparation extends StatelessWidget {
//   const Preparation({
//     Key key,
//     @required this.Index,
//   }) : super(key: key);
//
//   final int Index;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: RecipeData[Index].preparation.length,
//         itemBuilder: (context, index) {
//           return Container(
//             padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Card(
//                   child: Text(
//                     RecipeData[Index].preparation[index],
//                     style: TextStyle(
//                       color: Colors.black87,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           );
//         });
//   }
// }
