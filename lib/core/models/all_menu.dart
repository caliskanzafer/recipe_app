import 'package:recipe_app/core/models/burger.dart';
import 'package:recipe_app/core/models/sushi.dart';

List allMenuList = [...getBurgerList, ...getSushiList];

get getAllMenu => allMenuList;
