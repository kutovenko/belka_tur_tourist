import 'package:belka_tur_tourist/utils/class.dart';
import 'package:flutter/material.dart';

class PointPage extends StatelessWidget {
  final TourPoint _tourPoint;
  PointPage(this._tourPoint);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              title: Text(_tourPoint.pointName),
              flexibleSpace: FlexibleSpaceBar(
                background: Hero(
                  tag: _tourPoint.pointName,
                  child: FadeInImage(
                    image: NetworkImage(_tourPoint.pointImages[0]),
                    fit: BoxFit.cover,
                    placeholder: AssetImage('assets/images/loading.gif'),
                  ),
                ),
              ),
            ),
          ];
        },
        body: Container(
          color: Theme.of(context).primaryColor,
          padding: EdgeInsets.only(top: 8.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                Text('История',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
//                NutritionWidget(
//                  nutrients: _tourPoint.nutrients,
//                ),
                Text('Места',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(_tourPoint.pointDescription,
                      style: TextStyle(color: Colors.black, fontSize: 14.0)),
                ),

//                IngredientsWidget(
//                  ingredients: _tourPoint.ingredients,
//                ),
                Text('Задание',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                BuildSteps(
                  steps: _tourPoint.pointImages,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BuildSteps extends StatelessWidget {
  final List<String> steps;
  BuildSteps({this.steps});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: steps.length,
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Theme.of(context).accentColor,
                child: Text('${index + 1}',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(steps[index],
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

//class IngredientsWidget extends StatelessWidget {
//  final List<String> ingredients;
//  IngredientsWidget({this.ingredients});
//
//  @override
//  Widget build(BuildContext context) {
//    return SizedBox(
//      height: 50,
//      width: double.infinity,
//      child: ListView.builder(
//        itemCount: ingredients.length,
//        shrinkWrap: true,
//        scrollDirection: Axis.horizontal,
//        physics: BouncingScrollPhysics(),
//        itemBuilder: (BuildContext context, int index) {
//          return Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: Chip(
//              backgroundColor: Theme.of(context).accentColor,
//              label: Text(ingredients[index],
//                  style: TextStyle(
//                      color: Colors.black, fontWeight: FontWeight.bold)),
//            ),
//          );
//        },
//      ),
//    );
//  }
//}
//
//class NutritionWidget extends StatelessWidget {
//  final List<Nutrients> nutrients;
//  NutritionWidget({this.nutrients});
//  @override
//  Widget build(BuildContext context) {
//    return SizedBox(
//      height: 86,
//      width: double.infinity,
//      child: ListView.builder(
//        itemCount: nutrients.length,
//        scrollDirection: Axis.horizontal,
//        shrinkWrap: true,
//        physics: BouncingScrollPhysics(),
//        itemBuilder: (BuildContext context, int index) {
//          return CircleIndicator(percent: nutrients[index].percent,nutrient: nutrients[index],);
//        },
//      ),
//    );
//  }
//}
