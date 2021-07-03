import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/core/models/all_menu.dart';
import 'package:recipe_app/core/models/burger.dart';
import 'package:recipe_app/core/models/sushi.dart';
import 'package:recipe_app/core/state/menu_state.dart';
import 'package:recipe_app/view/detail/detail_view.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List _products = [getAllMenu, getSushiList, getBurgerList];

  @override
  Widget build(BuildContext context) {
    int _currentIndex = Provider.of<MenuState>(context).currentIndex;
    return Consumer<MenuState>(
      builder: (context, state, widget) {
        return ListView.builder(
          itemCount: _products[_currentIndex].length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: defaultPadding),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DetailView()));
                },
                child: Stack(
                  children: [
                    _background(context, _currentIndex, index),
                    _bookmark(),
                    _productName(_currentIndex, index),
                    _description(_currentIndex, index),
                  ],
                ),
              ),
            );
          },
          scrollDirection: Axis.vertical,
        );
      },
    );
  }

  Container _background(BuildContext context, int _currentIndex, int index) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            _products[_currentIndex][index].picture,
          ),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(24),
        color: Colors.blue,
      ),
    );
  }

  Positioned _bookmark() {
    return Positioned(
      right: defaultPadding / 2,
      top: defaultPadding / 2,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(16),
          color: Colors.brown,
        ),
        child: Icon(
          Icons.bookmark,
          color: Colors.white,
        ),
      ),
    );
  }

  Positioned _productName(int _currentIndex, int index) {
    return Positioned(
      bottom: defaultPadding * 3,
      child: Padding(
        padding: const EdgeInsets.only(left: defaultPadding),
        child: Text(
          '${_products[_currentIndex][index].name}',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.white,
            fontSize: 32,
          ),
        ),
      ),
    );
  }

  Positioned _description(int _currentIndex, int index) {
    return Positioned(
      bottom: defaultPadding * 1.5,
      child: Padding(
        padding: const EdgeInsets.only(left: defaultPadding),
        child: Text(
          '${_products[_currentIndex][index].ingridiend.length} Ingridiends | ${_products[_currentIndex][index].cookingTime}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
