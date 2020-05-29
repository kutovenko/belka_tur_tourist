import 'package:flutter/material.dart';

//class Nutrients {
//  String name;
//  String weight;
//  double percent;
//  Nutrients({this.name, this.weight, this.percent});
//}

//class Entity {
//  String id, imageUrl, title;
//  List<String> steps;
//  List<String> ingredients;
//  List<Nutrients> nutrients;
//  Entity(
//      {this.id,
//      this.title,
//      this.imageUrl,
//      this.steps,
//      this.ingredients,
//      this.nutrients});
//}

class EntityTile {
  String id, imageUrl, title;
  MaterialPageRoute route;

  EntityTile({this.id, this.title, this.imageUrl, this.route});
}

//todo refactor with json_serializable
class TourDescription {
  String tourid;
  String title;
  String language;
  String imageUrl;
  List<String> points;
  List<TourDay> days;

  TourDescription(
      {this.tourid,
      this.title,
      this.language,
      this.imageUrl,
      this.points,
      this.days});

  TourDescription.fromJson(Map<String, dynamic> json) {
    tourid = json['tourid'];
    title = json['title'];
    language = json['language'];
    imageUrl = json['imageUrl'];
    points = json['points'].cast<String>();
    if (json['days'] != null) {
      days = new List<TourDay>();
      json['days'].forEach((v) {
        days.add(new TourDay.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tourid'] = this.tourid;
    data['title'] = this.title;
    data['language'] = this.language;
    data['imageUrl'] = this.imageUrl;
    data['points'] = this.points;
    if (this.days != null) {
      data['days'] = this.days.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TourDay {
  String name;
  int number;
  String description;
  List<TourActivity> activities;

  TourDay({this.name, this.number, this.description, this.activities});

  TourDay.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    number = json['number'];
    description = json['description'];
    if (json['activities'] != null) {
      activities = new List<TourActivity>();
      json['activities'].forEach((v) {
        activities.add(new TourActivity.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['number'] = this.number;
    data['description'] = this.description;
    if (this.activities != null) {
      data['activities'] = this.activities.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TourActivity {
  String name;
  String type;
  String timebegin;
  String description;
  List<TourPoint> points;

  TourActivity(
      {this.name, this.type, this.timebegin, this.description, this.points});

  TourActivity.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
    timebegin = json['timebegin'];
    description = json['description'];
    if (json['points'] != null) {
      points = new List<TourPoint>();
      json['points'].forEach((v) {
        points.add(new TourPoint.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['type'] = this.type;
    data['timebegin'] = this.timebegin;
    data['description'] = this.description;
    if (this.points != null) {
      data['points'] = this.points.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TourPoint {
  String pointName;
  String type;
  String latitude;
  String longitude;
  String pointDescription;
  List<String> pointImages;

  TourPoint(
      {this.pointName,
      this.type,
      this.latitude,
      this.longitude,
      this.pointDescription,
      this.pointImages});

  TourPoint.fromJson(Map<String, dynamic> json) {
    pointName = json['pointName'];
    type = json['type'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    pointDescription = json['pointDescription'];
    pointImages = json['pointImages'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pointName'] = this.pointName;
    data['type'] = this.type;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['pointDescription'] = this.pointDescription;
    data['pointImages'] = this.pointImages;
    return data;
  }
}

//class TourDescription {
//  final String tourId;
//  final String title; //Название
//  final String imageUrl;
////  List<String> points; //Маршрут
////  String length;
////  String dates;
////  String placeBegin;
////  String placeEnd;
////  String paymentMeal;
////  String paymentStay;
////  String paymentTransport;
////  String excursions;
////  String additionals;
////  TourPoint startPoint;
////  TourPoint endPoint;
//  List<TourDay> days;
//  TourDescription({this.tourId, this.title, this.imageUrl, this.days});
//
//  factory TourDescription.fromJson(Map<String, dynamic> parsedJson) {
//    List newdays = parsedJson['days'];
//
////    weights.
//
////    List daysList = new List<TourDay>.from(days);
//    List<TourDay> daysList = List();
//    newdays.forEach((v) => daysList.add(TourDay(
//        activities: v.activities, name: v.name, description: v.description)));
////    List<TourDay> daysList = new List<TourDay>.from(days);
//
//    return new TourDescription(
//        tourId: parsedJson['tourid'],
//        title: parsedJson['title'],
//        days: daysList,
//        imageUrl: parsedJson['imageUrl']
////        points: parsedJson['points'],
//        );
//  }
//}
//
//class TourDay {
//  String name;
////  int count;
//  String description;
//  List<TourActivity> activities;
//  TourDay({this.name, this.description, this.activities});
//
//  factory TourDay.fromJson(Map<String, dynamic> parsedJson) {
//    var activities = parsedJson['activities'] as List;
////    List<TourActivity> activitiesList = new List<TourActivity>.from(activities);
//    List<TourActivity> activitiesList = activities.cast<TourActivity>();
//    return new TourDay(
//        name: parsedJson['name'],
////        count: parsedJson['number'] as int,
//        description: parsedJson['description'],
//        activities: activitiesList);
//  }
//}
//
//class TourActivity {
//  String name;
//  String type;
//  int count;
//  String timebegin;
//  String description;
////  Hint hint;
//  List<TourPoint> points;
//  TourActivity(
//      {this.name,
//      this.type,
//      this.count,
//      this.timebegin,
//      this.description,
//      this.points});
//
//  factory TourActivity.fromJson(Map<String, dynamic> parsedJson) {
//    var points = parsedJson['points'] as List;
//    List<TourPoint> pointsList = new List<TourPoint>.from(points);
//
//    return TourActivity(
//        name: parsedJson['name'],
//        type: parsedJson['type'],
//        timebegin: parsedJson['timebegin'],
//        description: parsedJson['description'],
//        points: pointsList);
//  }
//}
//
//class TourPoint {
//  String pointName;
//  String type;
//  String latitude;
//  String longitude;
//  String description;
//  List<String> pointImages;
//
//  TourPoint(
//      {this.pointName,
//      this.type,
//      this.latitude,
//      this.longitude,
//      this.description,
//      this.pointImages});
//
//  factory TourPoint.fromJson(Map<String, dynamic> parsedJson) {
//    var images = parsedJson['pointImages'] as List;
//    List<String> imagesList = new List<String>.from(images);
//    return TourPoint(
//        pointName: parsedJson['pointName'],
//        type: parsedJson['type'],
//        latitude: parsedJson['latitude'],
//        longitude: parsedJson['longitude'],
//        description: parsedJson['description'],
//        pointImages: imagesList);
//  }
//}
//
////to be used
//
////class Hint {
////  String description = "";
////  Hint({this.description});
////
////  factory Hint.fromJson(Map<String, dynamic> parsedJson) {
////    return Hint(description: parsedJson['description']);
////  }
////}
