import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../model/recommended_model.dart';

class DoteIndicator extends StatefulWidget {
  DoteIndicator({Key? key}) : super(key: key);

  @override
  _DoteIndicatorState createState() => _DoteIndicatorState();
}

class _DoteIndicatorState extends State<DoteIndicator> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: SmoothPageIndicator(
        controller: _pageController,
        count: recommendationsData.length - 1,
        effect: ExpandingDotsEffect(
            activeDotColor: const Color(0xffC0DEFF),
            dotColor: const Color(0xff8a8a8a).withOpacity(0.4),
            dotHeight: 7,
            dotWidth: 8,
            spacing: 8),
      ),
    );
  }
}
