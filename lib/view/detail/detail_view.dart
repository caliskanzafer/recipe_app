import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/view/detail/components/appbar/detail_app_bar.dart';

import 'components/body/heading/heading_area.dart';
import 'components/body/ingridients_detail.dart';
import 'components/body/video_area.dart';

class DetailView extends StatefulWidget {
  const DetailView({Key? key}) : super(key: key);

  @override
  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: DetailAppBar(),
      body: Padding(
        padding:
            const EdgeInsets.fromLTRB(defaultPadding, 0, defaultPadding, 0),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding / 3),
                child: VideoArea(),
              ),
            ),
            Expanded(
              child: HeadingArea(),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding / 3),
                child: Stack(
                  children: [
                    ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:
                              const EdgeInsets.only(bottom: defaultPadding / 2),
                          child: IngridientsDetail(sizedBox: _sizedBox),
                        );
                      },
                      itemCount: 5,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox get _sizedBox => SizedBox(
        width: defaultPadding,
      );
}
