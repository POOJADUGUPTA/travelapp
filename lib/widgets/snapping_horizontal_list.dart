import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_travel_app/model/recommended_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import '../screens/selected_test_screen.dart';

class SnappingList extends StatefulWidget {
  const SnappingList({Key? key}) : super(key: key);

  @override
  _SnappingListState createState() => _SnappingListState();
}

class _SnappingListState extends State<SnappingList> {
  int selectedIndex = 0;
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      height: MediaQuery.of(context).size.height * 0.38, //250,
      child: ScrollSnapList(
        listController: _controller,
        scrollDirection: Axis.horizontal,
        scrollPhysics: const BouncingScrollPhysics(),
        itemBuilder: _buildListItem,
        itemCount: recommendationsData.length,
        itemSize: 280,
        onItemFocus: (index) async {},
        dynamicItemSize: true,
        duration: 600,
      ),
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    return SizedBox(
      width: 300,
      child: Card(
        color: Color(int.parse(recommendationsData[index].color)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        child: Column(
          children: [
            Flexible(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.53,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage(recommendationsData[index].image))),
                    height: MediaQuery.of(context).size.height * 0.3, // 180,
                    child: Stack(
                      children: [
                        Positioned(
                            left: 19,
                            bottom: 19,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                                index == selectedIndex
                                    ? Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          pageBuilder: (_, __, ___) =>
                                              SelectedTestScreen(
                                            recommendationsData:
                                                recommendationsData[index],
                                          ),
                                          transitionDuration:
                                              const Duration(seconds: 2),
                                          transitionsBuilder: (context,
                                              animation,
                                              secondaryAnimation,
                                              child) {
                                            var begin = const Offset(0.0, 1.0);
                                            var end = Offset.zero;
                                            var curve = Curves.ease;

                                            var tween = Tween(
                                                    begin: begin, end: end)
                                                .chain(
                                                    CurveTween(curve: curve));

                                            return SlideTransition(
                                              position: animation.drive(tween),
                                              child: child,
                                            );
                                          },
                                          // (_, a, __, c) =>
                                          // FadeTransition(opacity: a, child: c),
                                        ),
                                      )
                                    : null;
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaY: 19, sigmaX: 19),
                                  child: Container(
                                    height: 36,
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16),
                                    alignment: Alignment.centerLeft,
                                    child: Row(children: [
                                      const Icon(Icons.location_on_outlined,
                                          color: Color(0xffFFFFFF)),
                                      const SizedBox(width: 10),
                                      Text(recommendationsData[index].name,
                                          style: GoogleFonts.lato(
                                              fontSize: 16,
                                              color: const Color(0xffFFFFFF),
                                              fontWeight: FontWeight.w700))
                                    ]),
                                  ),
                                ),
                              ),
                            ))
                      ],
                    )),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(recommendationsData[index].title,
                  style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff808080))),
            )
          ],
        ),
      ),
    );
  }
}
// onTap: () {
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) => SelectedTestScreen(
// recommendationsData:
// recommendationsData[index],
// )),
// );
// },
