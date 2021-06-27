import 'package:flutter/material.dart';
import 'package:recipe_app/core/models/ingridient.dart';

class Burger {
  String? name;
  String? picture;
  List<Ingridiend>? ingridiend;
  String? cookingTime;

  Burger({
    @required this.name,
    @required this.picture,
    @required this.ingridiend,
    @required this.cookingTime,
  });
}

List demoBurgers = [
  Burger(
    name: 'First Burger',
    picture:
        'http://www.livashop.com/Uploads/UrunResimleri/buyuk/steak-burger-6dee.jpg',
    ingridiend: [
      Ingridiend(
          name: 'Dana Bonfile', icon: Icon(Icons.coronavirus), scale: '200gr'),
      Ingridiend(
          name: 'Tuz', icon: Icon(Icons.add_road_outlined), scale: '2 gr'),
      Ingridiend(
          name: 'Domates',
          icon: Icon(Icons.offline_bolt_rounded),
          scale: '100gr'),
      Ingridiend(
          name: 'Sos',
          icon: Icon(Icons.screen_search_desktop_rounded),
          scale: '10 gr'),
    ],
    cookingTime: '40 Min',
  ),
  Burger(
    name: 'Second Burger',
    picture:
        'https://cdn.yemek.com/mnresize/1250/833/uploads/2021/02/kereviz-burger-yemekcom.jpg',
    ingridiend: [
      Ingridiend(
          name: 'Tavuk Gogus', icon: Icon(Icons.coronavirus), scale: '100gr'),
      Ingridiend(
          name: 'Tuz', icon: Icon(Icons.add_road_outlined), scale: '2 gr'),
      Ingridiend(
          name: 'Domates',
          icon: Icon(Icons.offline_bolt_rounded),
          scale: '100gr'),
      Ingridiend(
          name: 'Sos',
          icon: Icon(Icons.screen_search_desktop_rounded),
          scale: '10 gr'),
    ],
    cookingTime: '40 Min',
  ),
  Burger(
    name: 'Third Burger',
    picture:
        'http://www.livashop.com/Uploads/UrunResimleri/buyuk/steak-burger-6dee.jpg',
    ingridiend: [
      Ingridiend(
          name: 'Dana Bonfile', icon: Icon(Icons.coronavirus), scale: '200gr'),
      Ingridiend(
          name: 'Tuz', icon: Icon(Icons.add_road_outlined), scale: '2 gr'),
      Ingridiend(
          name: 'Domates',
          icon: Icon(Icons.offline_bolt_rounded),
          scale: '100gr'),
      Ingridiend(
          name: 'Sos',
          icon: Icon(Icons.screen_search_desktop_rounded),
          scale: '10 gr'),
    ],
    cookingTime: '40 Min',
  ),
  Burger(
    name: 'Fourth Burger',
    picture:
        'https://cdn.yemek.com/mnresize/1250/833/uploads/2021/02/kereviz-burger-yemekcom.jpg',
    ingridiend: [
      Ingridiend(
          name: 'Tavuk Bonfile', icon: Icon(Icons.coronavirus), scale: '200gr'),
      Ingridiend(
          name: 'Tuz', icon: Icon(Icons.add_road_outlined), scale: '2 gr'),
      Ingridiend(
          name: 'Domates',
          icon: Icon(Icons.offline_bolt_rounded),
          scale: '100gr'),
      Ingridiend(
          name: 'Sos',
          icon: Icon(Icons.screen_search_desktop_rounded),
          scale: '10 gr'),
    ],
    cookingTime: '40 Min',
  ),
];
