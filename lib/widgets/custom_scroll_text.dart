import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';

class ScrollTextAnimation extends StatefulWidget {
  const ScrollTextAnimation({Key? key}) : super(key: key);

  @override
  _ScrollTextAnimationState createState() => _ScrollTextAnimationState();
}

class _ScrollTextAnimationState extends State<ScrollTextAnimation> {
  @override
  Widget build(BuildContext context) {
    return buildAnimatedText("People don't take trips, trips take people.");
  }

  Widget buildAnimatedText(String text) {
    return Marquee(
      text: text,
      style: GoogleFonts.playfairDisplay(
          fontSize: 38, color: const Color(0xffBFEAF5)),
      blankSpace: 30,
      velocity: 150, // for reverse direction add -150
      pauseAfterRound: const Duration(seconds: 2),
    );
  }
}
