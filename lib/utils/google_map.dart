import 'package:url_launcher/url_launcher.dart';

class MapUtils {
  MapUtils._();

  static Future<void> openMap(String service, String latitude, String longitude) async {
    String prefix = "";
    if (service == "yandex") {
      prefix = 'https://yandex.ru/maps/?ll=';
    } else if (service == 'google'){
      prefix = 'https://www.google.com/maps/search/?api=1&query=';
    }
    String compositeUrl = 'https://yandex.ru/maps/?ll=$latitude,$longitude';
    if (await canLaunch(compositeUrl)) {
      await launch(compositeUrl);
    } else {
      throw 'Could not open the map.';
    }
  }
}