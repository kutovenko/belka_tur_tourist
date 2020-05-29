import 'dart:io';

import 'package:belka_tur_tourist/ui/tour_calendar.dart';
import 'package:belka_tur_tourist/utils/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _tileSize = MediaQuery.of(context).size.width / 2;
    var body = Container(
      color: Theme.of(context).primaryColor,
      child: GridView.builder(
          shrinkWrap: false,
          itemCount: 4,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
//                  Scaffold.of(context).showSnackBar(SnackBar(content: Text("Hello", style: TextStyle(color: Colors.red)),));
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TourCalendar()));
                },
                child: Card(
                  color: Theme.of(context).accentColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Container(
                    width: _tileSize,
                    height: 50,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                            ),
                            child: Hero(
                              tag: Data.tiles[index].id,
                              child: FadeInImage(
                                image: NetworkImage(Data.tiles[index].imageUrl),
                                fit: BoxFit.cover,
                                width: _tileSize,
                                height: _tileSize,
                                placeholder:
                                    AssetImage('assets/images/logo_main.png'),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            Data.tiles[index].title,
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.normal),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/icons/logo_main.png'),
        ),
        centerTitle: true,
        title: Text('Белка-Тур::Компаньон'),
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(child: Text('RU')),
                PopupMenuItem(child: Text('EN')),
                PopupMenuItem(child: Text('DE')),
              ];
            },
          )
        ],
      ),
      body: body,
    );
  }
}
