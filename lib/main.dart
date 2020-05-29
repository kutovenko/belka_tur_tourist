import 'package:belka_tur_tourist/ui/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Белка-Тур::Компаньон',
      theme: ThemeData(
        primaryColor: Color(0xffffffff),
        accentColor: Color(0xffa62b2e),
      ),
      home: HomePage(),
    );
  }
}