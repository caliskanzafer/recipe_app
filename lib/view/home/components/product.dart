import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';

class Product extends StatelessWidget {
  const Product({
    Key? key,
    required Size size,
  })  : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: defaultPadding),
          child: Stack(
            children: [
              Container(
                height: _size.height / 2,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue),
              ),
              Positioned(
                right: defaultPadding / 2,
                top: defaultPadding / 2,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.red,
                  ),
                  child: Icon(
                    Icons.bookmark,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: defaultPadding * 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: defaultPadding),
                  child: Text(
                    'Salmon Sushi \nMatcha',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 32,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: defaultPadding * 1.5,
                child: Padding(
                  padding: const EdgeInsets.only(left: defaultPadding),
                  child: Text(
                    '12 Ingridients | 40 Min',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      scrollDirection: Axis.vertical,
    );
  }
}
