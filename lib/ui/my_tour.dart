import 'package:belka_tur_tourist/repository.dart';
import 'package:belka_tur_tourist/utils/class.dart';
import 'package:belka_tur_tourist/utils/google_map.dart';
import 'package:belka_tur_tourist/utils/widgets.dart';
import 'package:flutter/material.dart';

/*
Описание конкретного купленного клиентом тура
Далее - с возможностью докупить компоненты
 */
class MyTour extends StatelessWidget {
  Repository repository = new Repository();

//  final Entity recipe;

  @override
  Widget build(BuildContext context) {
    //dummy tour
    TourDescription tourDescription = null;

//    TourDescription tourDescription = repository.getCurrentTour();
    //

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 400.0,
              floating: false,
              pinned: true,
              title: Text("Мой тур"),
              flexibleSpace: FlexibleSpaceBar(
                background: Hero(
                  tag: tourDescription.tourid,
                  child: FadeInImage(
                    image: NetworkImage(tourDescription.imageUrl),
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
//                HeaderWidget('Тур "Майские в Беларуси"'),
                headerH1('Тур "Майские в Беларуси"'),

//                NutritionWidget(
//                  nutrients: recipe.nutrients,
//                ),
//                headerW("Маршрут"),
//                ActivitiesWidget(
//                  points: tourDescription.points,
//                ),
//
//                headerW("Продолжительность"),
//                textParagraph(tourDescription.length),
//
//                headerW("Даты проведения"),
//                textParagraph(tourDescription.dates),
//
//                headerW("Место и время начала"),
//                textParagraph(tourDescription.placeBegin),

                RaisedButton.icon(
                  onPressed: () {
                    MapUtils.openMap("yandex", "53°56.865' N", "27°22.065' E");
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("Map"),
                    ));
                  },
                  icon: Icon(Icons.location_on),
                  label: Text("Открыть карту"),
                ),

                headerW("Место и время окончания"),
//                textParagraph(tourDescription.placeEnd),

                RaisedButton.icon(
                  onPressed: () {
                    MapUtils.openMap("yandex", "53°56.865' N", "27°22.065' E");
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("Map"),
                    ));
                  },
                  icon: Icon(Icons.location_on),
                  label: Text("Открыть карту"),
                ),

//                headerW("Питание"),
//                textParagraph(tourDescription.paymentMeal),
//
//                headerW("Проживание"),
//                textParagraph(tourDescription.paymentStay),
//
//                headerW("Транспортные услуги"),
//                textParagraph(tourDescription.paymentTransport),
//
//                headerW("Экскурсии"),
//                textParagraph(tourDescription.excursions),
//
//                headerW("Дополнительные услуги"),
//                textParagraph(tourDescription.additionals),
              ],
            ),
          ),
        ),
      ),
    );
  }

  headerH1(String s) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Text(s,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          )),
    );
  }

  headerW(String s) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
          child: Text(s,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 20,
              )),
        ));
  }

  textParagraph(String text) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40.0, 16.0, 16.0, 16.0),
          child: Text(text,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 16,
              )),
        ));
  }
}

class RecipeSteps extends StatelessWidget {
  final List<String> steps;
  RecipeSteps({this.steps});

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
                          color: Colors.white,
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

class ActivitiesWidget extends StatelessWidget {
  final List<String> points;
  ActivitiesWidget({this.points});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ListView.builder(
        itemCount: points.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Chip(
              backgroundColor: Theme.of(context).accentColor,
              label: Text(points[index],
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
          );
        },
      ),
    );
  }
}

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
//          return CircleIndicator(
//            percent: nutrients[index].percent,
//            nutrient: nutrients[index],
//          );
//        },
//      ),
//    );
//  }
//}
