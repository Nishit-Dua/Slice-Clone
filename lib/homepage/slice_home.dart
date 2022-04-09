import 'package:flutter/material.dart';
import 'package:good_project/homepage/custom_appbar.dart';
import 'package:good_project/homepage/slice_home_card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:good_project/homepage/styled_slice_home_cards.dart';

class SliceHomeClone extends StatelessWidget {
  SliceHomeClone({Key? key}) : super(key: key);

  final String assetName = 'assets/homecard.svg';
  final Widget svg = SvgPicture.asset(
    'assets/homecard.svg',
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomSliceAppBar(),
        SizedBox(
          height: 500,
          child: PageView(
            scrollBehavior: ScrollBehavior(
              // Android 12esq overscroll behaviour
              androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,
            ),
            controller: PageController(viewportFraction: 0.9),
            scrollDirection: Axis.horizontal,
            children: const <SliceHomeCard>[
              SliceHomeCard(child: HomeCard1()),
              SliceHomeCard(child: HomeCard2()),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        )
      ],
    );
  }
}
