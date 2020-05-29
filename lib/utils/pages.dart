import 'package:belka_tur_tourist/ui/details.dart';
import 'package:belka_tur_tourist/utils/class.dart';
import 'package:flutter/material.dart';

import 'class.dart';

class DayDetailsPage extends StatelessWidget {
  final TourDay tourDay;
  final BuildContext context;

  DayDetailsPage(this.tourDay, this.context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20.0),
              children: <Widget>[
                Text(
                  tourDay.name.toUpperCase(),
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(tourDay.description),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.memory),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(getExcursionsCount())
                          ],
                        ),
                      ),
                      VerticalDivider(),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.timer),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text("9:00 - 19:00")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                for (var activity in tourDay.activities)
                  _buildActivityCard(activity, context),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
          FlatButton.icon(
            icon: Icon(Icons.location_on, color: Colors.red),
            label: Text("Посмотреть карту"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildActivityCard(TourActivity activity, BuildContext buildContext) {
    String leadingTitle = activity.timebegin;
    String title = activity.name.toUpperCase();
    String content = activity.description;
    BuildContext context = buildContext;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Material(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          color: Colors.red,
          child: Container(
            padding: EdgeInsets.all(5.0),
            child: Text(leadingTitle,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0)),
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(title,
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
              SizedBox(
                height: 10.0,
              ),
              Text(content),
              SizedBox(
                height: 30.0,
              ),
              if (activity.type == "exc")
                showCarousel(activity.points, context), //todo
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        )
      ],
    );
  }

  String getExcursionsCount() {
    return "Экскурсий: ${tourDay.activities.where((i) => i.type == "exc").toList().length}";
  }
}

class PointDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

Material showCarousel(List<TourPoint> points, BuildContext context) {
  _buildBottomImage(String imageRes) {
    return Row(
      children: <Widget>[
        Container(
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                  image: NetworkImage(imageRes), fit: BoxFit.cover)),
        ),
        SizedBox(
          width: 10.0,
        ),
      ],
    );
  }

  return Material(
    elevation: 2.0,
    color: Colors.white,
    child: Container(
      padding: EdgeInsets.all(10.0),
      height: 80,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => PointPage(points[0])));
        },
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            for (var point in points) _buildBottomImage(point.pointImages[0]),
          ],
        ),
      ),
    ),
  );
}
