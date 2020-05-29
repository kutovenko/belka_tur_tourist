import 'package:belka_tur_tourist/repository.dart';
import 'package:belka_tur_tourist/utils/class.dart';
import 'package:belka_tur_tourist/utils/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:convert';

/*
Календарь тура по дням. Постоянное описание из общей базы.
 */

class TourCalendar extends StatefulWidget {
  @override
  _TourCalendarState createState() => _TourCalendarState();
}

class _TourCalendarState extends State<TourCalendar> {
  static final Repository _repository = Repository();
  TourDescription _tourDescription;
  String _text = 'Расписание тура';

  @override
  void initState() {
    super.initState();
    getTour("s001-01");
  }

  @override
  Widget build(BuildContext context) {
    final _tabPages = getTabPages();
    final _tabs = getTabs();
//    String _text = "";

    return DefaultTabController(
      length: 3,
//      length: _tourDescription.days.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            _text,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.red,
          bottom: TabBar(
            tabs: _tabs,
          ),
        ),
        body: TabBarView(
          children: _tabPages,
        ),
      ),
    );
  }

  getTabPages() {
    return <Widget>[
      for (TourDay day in _tourDescription.days) _buildDayPage(day, context),
    ];
  }
//        Center(
//          child: DayDetailsPage(day, context),
//        )
//      }

  _buildDayPage(TourDay day, BuildContext context) {
    return Center(
      child: DayDetailsPage(day, context),
    );
  }
//      Center(
//        child: DayDetailsPage(_tourDescription.days[0], context),
//      ),
//      Center(
//        child: DayDetailsPage(_tourDescription.days[1], context),
//      ),
//      Center(
//        child: DayDetailsPage(_tourDescription.days[2], context),
//      ),
//    ];
//  }

  getTabs() {
    return <Tab>[
      Tab(
        text: 'День 1',
      ),
      Tab(
        text: 'День 2',
      ),
      Tab(
        text: 'День 3',
      ),
    ];
  }

  Future<void> getTour(String id) async {
    TourDescription currentTour;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      currentTour = await _repository.getFromApp42("s001-01");
    } on PlatformException {
      currentTour = TourDescription();
    }
    if (!mounted) return;

    setState(() {
      _tourDescription = currentTour;
    });
  }
//
//
//  Future<void> getTour(String id) async {
//    String text;
//    String tourId;
//    String title; //Название
//    String imageUrl;
//    List<String> points; //Маршрут
//    String length;
//    String dates;
//    String placeBegin;
//    String placeEnd;
//    String paymentMeal;
//    String paymentStay;
//    String paymentTransport;
//    String excursions;
//    String additionals;
//
//    TourPoint startPoint, endPoint;
//
//    List<TourDay> days;
//    // Platform messages may fail, so we use a try/catch PlatformException.
//    try {
//      text = await _repository.getFromApp42(id);
//      title = jsonDecode(text)["title"];
//      imageUrl = jsonDecode(text)["imageUrl"];
//
////      tour = TourDescription.fromJson(parsed);
//    } on PlatformException {
//      text = 'Platform Exception';
//    }
//
//    setState(() {
//      _text = title;
//      _tourDescription.imageUrl = imageUrl;
//    });
//  }
}

//class TourCalendar extends StatelessWidget {
//  static final Repository _repository = Repository();
//  TourDescription _tourDescription = _repository.getFromApp42("s001-01");
//  String _text = 'Расписание тура';
//
////  TourCalendar(this._tourDescription);
//  TourCalendar();
//
//  @override
//  Widget build(BuildContext context) {
//    final _tabPages = getTabPages();
//    final _tabs = getTabs();
//    getTour("s001-01");
//
//    return DefaultTabController(
//      length: _tourDescription.days.length,
//      child: Scaffold(
//        appBar: AppBar(
//          title: Text(
//            _text,
//            textAlign: TextAlign.center,
//          ),
//          backgroundColor: Colors.red,
//          bottom: TabBar(
//            tabs: _tabs,
//          ),
//        ),
//        body: TabBarView(
//          children: _tabPages,
//        ),
//      ),
//    );
//  }
//
//  getTabPages() {
//    return <Widget>[
//      Center(
//        child: DayDetailsPage(_tourDescription.days[0]),
//      ),
//      Center(
//        child: DayDetailsPage(_tourDescription.days[1]),
//      ),
//      Center(
//        child: DayDetailsPage(_tourDescription.days[2]),
//      ),
//    ];
//  }
//
//  getTabs() {
//    return <Tab>[
//      Tab(
//        text: 'День 1',
//      ),
//      Tab(
//        text: 'День 2',
//      ),
//      Tab(
//        text: 'День 3',
//      ),
//    ];
//  }

//  Future<void> getTour(String id) async {
//    String text;
//    // Platform messages may fail, so we use a try/catch PlatformException.
//    try {
//      print(_text = await _repository.getFromApp42(id));
//    } on Exception {
//      _text = 'Platform Exception';
//    }
//  }
//}
