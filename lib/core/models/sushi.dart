import 'package:flutter/material.dart';
import 'package:recipe_app/core/models/ingridient.dart';

class Sushi {
  String? name;
  String? picture;
  List<Ingridiend>? ingridiend;
  String? cookingTime;

  Sushi({
    @required this.name,
    @required this.picture,
    @required this.ingridiend,
    @required this.cookingTime,
  });
}

List demoSushis = [
  Sushi(
    name: 'First Sushi',
    picture:
        'https://cdn.yemek.com/mncrop/940/625/uploads/2020/04/sushi-tarifi.jpg',
    ingridiend: [
      Ingridiend(name: 'Tuna', icon: Icon(Icons.coronavirus), scale: '200gr'),
      Ingridiend(
          name: 'Pirinc', icon: Icon(Icons.add_road_outlined), scale: '2 gr'),
      Ingridiend(
          name: 'Soya', icon: Icon(Icons.offline_bolt_rounded), scale: '100gr'),
      Ingridiend(
          name: 'Sos',
          icon: Icon(Icons.screen_search_desktop_rounded),
          scale: '10 gr'),
    ],
    cookingTime: '40 Min',
  ),
  Sushi(
    name: 'Second Sushi',
    picture:
        'https://www.oggusto.com/UserFiles/Image/images/Aralik2020/sushi_manga.jpg',
    ingridiend: [
      Ingridiend(name: 'Hamsi', icon: Icon(Icons.coronavirus), scale: '200gr'),
      Ingridiend(
          name: 'Pirinc', icon: Icon(Icons.add_road_outlined), scale: '2 gr'),
      Ingridiend(
          name: 'Soya', icon: Icon(Icons.offline_bolt_rounded), scale: '100gr'),
      Ingridiend(
          name: 'Sos',
          icon: Icon(Icons.screen_search_desktop_rounded),
          scale: '10 gr'),
    ],
    cookingTime: '40 Min',
  ),
  Sushi(
    name: 'Third Sushi',
    picture:
        'https://cdn.yemek.com/mncrop/940/625/uploads/2020/04/sushi-tarifi.jpg',
    ingridiend: [
      Ingridiend(
          name: 'Uskumru', icon: Icon(Icons.coronavirus), scale: '200gr'),
      Ingridiend(
          name: 'Pirinc', icon: Icon(Icons.add_road_outlined), scale: '2 gr'),
      Ingridiend(
          name: 'Soya', icon: Icon(Icons.offline_bolt_rounded), scale: '100gr'),
      Ingridiend(
          name: 'Sos',
          icon: Icon(Icons.screen_search_desktop_rounded),
          scale: '10 gr'),
    ],
    cookingTime: '40 Min',
  ),
  Sushi(
    name: 'Fourth Sushi',
    picture:
        'https://www.oggusto.com/UserFiles/Image/images/Aralik2020/sushi_manga.jpg',
    ingridiend: [
      Ingridiend(name: 'Mezgit', icon: Icon(Icons.coronavirus), scale: '200gr'),
      Ingridiend(
          name: 'Pirinc', icon: Icon(Icons.add_road_outlined), scale: '2 gr'),
      Ingridiend(
          name: 'Soya', icon: Icon(Icons.offline_bolt_rounded), scale: '100gr'),
      Ingridiend(
          name: 'Sos',
          icon: Icon(Icons.screen_search_desktop_rounded),
          scale: '10 gr'),
    ],
    cookingTime: '40 Min',
  ),
];

get getSushiList => demoSushis;
