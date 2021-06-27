import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(16),
              ),
              hintText: 'Search Destination',
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
        SizedBox(
          width: defaultPadding,
        ),
        Expanded(
          flex: 1,
          child: InkWell(
            onTap: () {},
            child: Container(
                decoration: BoxDecoration(
                  color: primaryColor.withOpacity(0.3),
                  border: Border.all(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: primaryColor.withOpacity(0.6),
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
