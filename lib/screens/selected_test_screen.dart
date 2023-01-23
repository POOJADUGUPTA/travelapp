import 'dart:ui';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../model/recommended_model.dart';

class SelectedTestScreen extends StatefulWidget {
  RecommendedModel recommendationsData;
  SelectedTestScreen({Key? key, required this.recommendationsData})
      : super(key: key);

  @override
  _SelectedTestScreenState createState() => _SelectedTestScreenState();
}

class _SelectedTestScreenState extends State<SelectedTestScreen> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    var images = widget.recommendationsData.images;
    print("images ===========$_controller");
    return Scaffold(
        body: InkWell(
      child: ListView.builder(
          controller: _controller,
          itemCount: images.length,
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (content, index) {
            return blurImageContent(index, images);
          }),
    ));
  }

  Widget blurImageContent(int index, List<String> images) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(images[index]),
          fit: BoxFit.fill,
        )),
        child: BlurryContainer(
            blur: 5,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            elevation: 0,
            color: Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(0)),
            child: siteContent(index, images)));
  }

  Widget siteContent(int index, List<String> images) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                images[index],
                width: 500,
                height: 400,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  recommendationsData[index].text[index],
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 20, color: Colors.white),
                ),
                const SizedBox(height: 20),
                Text(
                  recommendationsData[index].description[index],
                  style: GoogleFonts.lato(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(height: 20),
                Text(
                  "Best Time : ${recommendationsData[index].besttime[index]}",
                  style: GoogleFonts.lato(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
