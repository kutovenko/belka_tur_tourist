import 'package:belka_tur_tourist/ui/tour_calendar.dart';
import 'package:flutter/material.dart';

import 'class.dart';

class Data {
//  static List<TourDescription> points

  static List<EntityTile> tiles = [
    EntityTile(
      id: "0",
      title: 'Мой аккаунт',
      imageUrl: 'http://belka-tour.by/images/tours/g-02may.jpg',
    ),
    EntityTile(
      id: "1",
      title: 'Мой тур',
      imageUrl: 'http://belka-tour.by/images/tours/g-02may.jpg',
      route: MaterialPageRoute(builder: (context) => TourCalendar()),
    ),
    EntityTile(
      id: "2",
      title: 'А что вокруг?',
      imageUrl: 'http://belka-tour.by/images/tours/g-02may.jpg',
    ),
    EntityTile(
      id: "3",
      title: 'Что-то еще',
      imageUrl: 'http://belka-tour.by/images/tours/g-02may.jpg',
    ),
  ];

//  static List<Entity> entities = [
//    Entity(
//        id: '1',
//        title: 'Мой тур',
//        imageUrl:
//            'https://images.unsplash.com/photo-1496116218417-1a781b1c416c?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
//        nutrients: [
//          Nutrients(name: 'Calories', weight: '200', percent: 0.7),
//          Nutrients(name: 'Protein', weight: '10gm', percent: 0.5),
//          Nutrients(name: 'Carb', weight: '50gm', percent: 0.9),
//        ],
//        steps: [
//          'Gather the ingredients.',
//          'Pull a double shot of espresso into a cappuccino cup.',
//          'Foam the milk to double its original volume.'
//              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
//          'Serve immediately.'
//        ],
//        ingredients: [
//          '2 shots espresso (a double shot)',
//          '4 ounces milk'
//        ]),
//    Entity(
//        id: '2',
//        title: '',
//        imageUrl:
//            'https://images.unsplash.com/photo-1444418185997-1145401101e0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1391&q=80',
//        nutrients: [
//          Nutrients(name: 'Calories', weight: '200', percent: 0.7),
//          Nutrients(name: 'Protein', weight: '10gm', percent: 0.5),
//          Nutrients(name: 'Carb', weight: '50gm', percent: 0.9),
//        ],
//        steps: [
//          'Gather the ingredients.',
//          'Pull a double shot of espresso into a cappuccino cup.',
//          'Foam the milk to double its original volume.'
//              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
//          'Serve immediately.'
//        ],
//        ingredients: [
//          '2 shots espresso (a double shot)',
//          '4 ounces milk'
//        ]),
//    Entity(
//        id: '3',
//        title: 'А что вокруг?',
//        imageUrl:
//            'https://images.unsplash.com/photo-1473093295043-cdd812d0e601?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
//        nutrients: [
//          Nutrients(name: 'Calories', weight: '100', percent: 0.2),
//          Nutrients(name: 'Protein', weight: '10gm', percent: 0.7),
//          Nutrients(name: 'Carb', weight: '50gm', percent: 0.6),
//          Nutrients(name: 'Fat', weight: '10gm', percent: 0.3),
//        ],
//        steps: [
//          'Gather the ingredients.',
//          'Pull a double shot of espresso into a cappuccino cup.',
//          'Foam the milk to double its original volume.'
//              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
//          'Serve immediately.'
//        ],
//        ingredients: [
//          '2 shots espresso (a double shot)',
//          '4 ounces milk'
//        ]),
//    Entity(
//        id: '4',
//        title: 'Мой аккаунт',
//        imageUrl:
//            'https://images.unsplash.com/photo-1506354666786-959d6d497f1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
//        nutrients: [
//          Nutrients(name: 'Calories', weight: '200', percent: 0.7),
//          Nutrients(name: 'Protein', weight: '10gm', percent: 0.5),
//          Nutrients(name: 'Carb', weight: '50gm', percent: 0.9),
//        ],
//        steps: [
//          'Gather the ingredients.',
//          'Pull a double shot of espresso into a cappuccino cup.',
//          'Foam the milk to double its original volume.'
//              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
//          'Serve immediately.'
//        ],
//        ingredients: [
//          '2 shots espresso (a double shot)',
//          '4 ounces milk'
//        ]),
//  ];
}
