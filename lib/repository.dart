import 'package:app42_plugin/app42_plugin.dart';
import 'package:belka_tur_tourist/utils/class.dart';
import 'package:belka_tur_tourist/utils/values.dart';

import 'dart:async';
import 'package:flutter/services.dart';
import 'dart:convert';

class Repository {
  Repository();

  App42Plugin app42plugin = new App42Plugin();

//  TourDescription getCurrentTour() {
//    TourDescription tourDescription = new TourDescription();
//    tourDescription.tourId = "0";
//    tourDescription.points = [
//      "г.Минск",
//      "мемориал «Хатынь»",
//      "завод «Белаз»",
//      "Мирский замок",
//      "Несвижский замок",
//      "г.Брест",
//      "Брестская-крепость"
//    ];
//    tourDescription.title = "Майские в Беларуси";
//    tourDescription.imageUrl = "http://belka-tour.by/images/tours/g-02may.jpg";
//    tourDescription.length = "5 дней / 4 ночи";
//    tourDescription.dates = "1.05.2020 - 5.05.2020";
//    tourDescription.placeBegin =
//        "Минский р-н, 14-й километр автодороги Минск-Молодечно (4 км. от МКАД). 53°56.865' N, 27°22.065' E, База отдыха Ратомка, заселение с 14.00.";
//    tourDescription.placeEnd =
//        "Минский р-н, 14-й километр автодороги Минск-Молодечно (4 км. от МКАД). 53°56.865' N, 27°22.065' E, База отдыха Ратомка, заселение с 14.00.";
//    tourDescription.paymentMeal =
//        "01.05.20 – белорусский ужин, остальные дни – завтраки и обеды";
//    tourDescription.paymentStay =
//        "2 ночи в Минске в загородном комплексе «Ратомка» или отеле сети “Тайм”, 1 ночь в гостинице «Мирский посад», 1 ночь в гостинице “Беловежская пуща” (п. Каменюки) или в гостинице “Брест” (г. Брест). Проживание в номерах категории «Стандарт», двухместное расселение.";
//    tourDescription.paymentTransport =
//        "проезд по маршруту тура на микроавтобусе Мерседес или большом туристическом автобусе в зависимости от размера группы.";
//    tourDescription.excursions =
//        "Услуги гида-сопровождающего, который будет с вами круглосуточно все дни во время тура. Все необходимые входные билеты и экскурсионное обслуживание в музеях.";
//    tourDescription.additionals = "ужины 2.05.2020, 3.05.2020";
//
//    tourDescription.startPoint =
//        TourPoint("Комплекс Ратомка", "hotel", "53°56.865' N", "27°22.065' E");
//    tourDescription.endPoint =
//        TourPoint("Комплекс Ратомка", "hotel", "53°56.865' N", "27°22.065' E");
//
//    tourDescription.days = [
//      TourDay("Первый день", 1,
//          "Насыщенный день. Тематика - современные города и ВОВ. ", [
//        TourActivity(
//            "Обзорная экскурсия по Минску",
//            "exc",
//            0,
//            "9:00",
//            "Все увидите все основные достопримечательности в пешеходной прогулке",
//            [
//              'assets/images/tours/vorota.jpg',
//              'assets/images/tours/troy.jpg',
//              'assets/images/tours/ostrov.jpg',
//              'assets/images/tours/tree.jpg',
//            ]),
//        TourActivity("Обед", "org", 1, "13:00", "Вкусный обед в Васильках", []),
//        TourActivity(
//            "Мемориал Хатынь",
//            "exc",
//            2,
//            "18:00",
//            "Все увидите все основные достопримечательности в пешеходной прогулке",
//            []),
//        TourActivity(
//            "Переезд в Ратомку", "org", 3, "19:00", "Автобусный переезд", [])
//      ]),
//      TourDay("Второй день", 2,
//          "Насыщенный день. Тематика - производственные экскурсии", [
//        TourActivity(
//            "Завод Белаз", "exc", 0, "9:00", "Самые большие грузовики", []),
//        TourActivity("Обед", "org", 1, "13:00", "Вкусный обед в Васильках", []),
//        TourActivity(
//            "Переезд в Ратомку", "org", 2, "17:00", "Автобусный переезд", [])
//      ]),
//      TourDay(
//          "Третий день", 3, "Насыщенный день. Тематика - замки и архитектура", [
//        TourActivity(
//            "Обзорная экскурсия по Минску",
//            "exc",
//            0,
//            "9:00",
//            "Все увидите все основные достопримечательности в пешеходной прогулке",
//            []),
//        TourActivity("Обед", "org", 1, "14:00", "Вкусный обед в Васильках", []),
//        TourActivity(
//            "Мемориал Хатынь",
//            "exc",
//            2,
//            "17:00",
//            "Все увидите все основные достопримечательности в пешеходной прогулке",
//            []),
//        TourActivity(
//            "Переезд в Ратомку", "org", 3, "19:00", "Автобусный переезд", [])
//      ]),
//    ];
//
////
////    tourDescription.start_latitude = "53°56.865' N";
////    tourDescription.start_longitude = "27°22.065' E";
////    tourDescription.finish_latitude = "53°56.865' N";
////    tourDescription.finish_longitude = "27°22.065' E";
//
//    return tourDescription;
//  }

//  TourDescription currentTourMapper(String json) {
//    TourDescription tourDescription = new TourDescription();
//    tourDescription.tourId = "0";
//    tourDescription.points = [
//      "г.Минск",
//      "мемориал «Хатынь»",
//      "завод «Белаз»",
//      "Мирский замок",
//      "Несвижский замок",
//      "г.Брест",
//      "Брестская-крепость"
//    ];
//    tourDescription.title = "Майские в Беларуси";
//    tourDescription.imageUrl = "http://belka-tour.by/images/tours/g-02may.jpg";
//    tourDescription.length = "5 дней / 4 ночи";
//    tourDescription.dates = "1.05.2020 - 5.05.2020";
//    tourDescription.placeBegin =
//        "Минский р-н, 14-й километр автодороги Минск-Молодечно (4 км. от МКАД). 53°56.865' N, 27°22.065' E, База отдыха Ратомка, заселение с 14.00.";
//    tourDescription.placeEnd =
//        "Минский р-н, 14-й километр автодороги Минск-Молодечно (4 км. от МКАД). 53°56.865' N, 27°22.065' E, База отдыха Ратомка, заселение с 14.00.";
//    tourDescription.paymentMeal =
//        "01.05.20 – белорусский ужин, остальные дни – завтраки и обеды";
//    tourDescription.paymentStay =
//        "2 ночи в Минске в загородном комплексе «Ратомка» или отеле сети “Тайм”, 1 ночь в гостинице «Мирский посад», 1 ночь в гостинице “Беловежская пуща” (п. Каменюки) или в гостинице “Брест” (г. Брест). Проживание в номерах категории «Стандарт», двухместное расселение.";
//    tourDescription.paymentTransport =
//        "проезд по маршруту тура на микроавтобусе Мерседес или большом туристическом автобусе в зависимости от размера группы.";
//    tourDescription.excursions =
//        "Услуги гида-сопровождающего, который будет с вами круглосуточно все дни во время тура. Все необходимые входные билеты и экскурсионное обслуживание в музеях.";
//    tourDescription.additionals = "ужины 2.05.2020, 3.05.2020";
//
//    tourDescription.startPoint =
//        TourPoint("Комплекс Ратомка", "hotel", "53°56.865' N", "27°22.065' E");
//    tourDescription.endPoint =
//        TourPoint("Комплекс Ратомка", "hotel", "53°56.865' N", "27°22.065' E");
//
//    tourDescription.days = [
//      TourDay("Первый день", 1,
//          "Насыщенный день. Тематика - современные города и ВОВ. ", [
//        TourActivity(
//            "Обзорная экскурсия по Минску",
//            "exc",
//            0,
//            "9:00",
//            "Все увидите все основные достопримечательности в пешеходной прогулке",
//            [
//              'assets/images/tours/vorota.jpg',
//              'assets/images/tours/troy.jpg',
//              'assets/images/tours/ostrov.jpg',
//              'assets/images/tours/tree.jpg',
//            ]),
//        TourActivity("Обед", "org", 1, "13:00", "Вкусный обед в Васильках", []),
//        TourActivity(
//            "Мемориал Хатынь",
//            "exc",
//            2,
//            "18:00",
//            "Все увидите все основные достопримечательности в пешеходной прогулке",
//            []),
//        TourActivity(
//            "Переезд в Ратомку", "org", 3, "19:00", "Автобусный переезд", [])
//      ]),
//      TourDay("Второй день", 2,
//          "Насыщенный день. Тематика - производственные экскурсии", [
//        TourActivity(
//            "Завод Белаз", "exc", 0, "9:00", "Самые большие грузовики", []),
//        TourActivity("Обед", "org", 1, "13:00", "Вкусный обед в Васильках", []),
//        TourActivity(
//            "Переезд в Ратомку", "org", 2, "17:00", "Автобусный переезд", [])
//      ]),
//      TourDay(
//          "Третий день", 3, "Насыщенный день. Тематика - замки и архитектура", [
//        TourActivity(
//            "Обзорная экскурсия по Минску",
//            "exc",
//            0,
//            "9:00",
//            "Все увидите все основные достопримечательности в пешеходной прогулке",
//            []),
//        TourActivity("Обед", "org", 1, "14:00", "Вкусный обед в Васильках", []),
//        TourActivity(
//            "Мемориал Хатынь",
//            "exc",
//            2,
//            "17:00",
//            "Все увидите все основные достопримечательности в пешеходной прогулке",
//            []),
//        TourActivity(
//            "Переезд в Ратомку", "org", 3, "19:00", "Автобусный переезд", [])
//      ]),
//    ];
//
////
////    tourDescription.start_latitude = "53°56.865' N";
////    tourDescription.start_longitude = "27°22.065' E";
////    tourDescription.finish_latitude = "53°56.865' N";
////    tourDescription.finish_longitude = "27°22.065' E";
//
//    return tourDescription;
//  }

  Future<TourDescription> getFromApp42(String tourId) async {
    try {
      String tour = await App42Plugin.getTour(Values.dbName,
          Values.collectionName, Values.apiKey, Values.secretKey, tourId);
      return TourDescription.fromJson(json.decode(tour));
    } on PlatformException {
      return TourDescription();
    }
  }
}
