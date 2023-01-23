import 'dart:async';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_app/model/recommended_model.dart';
import 'package:google_fonts/google_fonts.dart';
import '../main.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/custom_scroll_text.dart';
import '../widgets/custom_tab_indicator.dart';
import '../widgets/snapping_horizontal_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final PageController _pageController = PageController(viewportFraction: 0.8);
  int tabIndex = 0;
  final scrollController = ScrollController();
  // @override
  // void dispose() {
  //   _pageController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarTravel(),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 28.8),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              //menu And drawer icon text widget for title
              Padding(
                padding:
                    const EdgeInsets.only(left: 30, right: 28.8, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    searchMenu(Icons.menu),
                    Flexible(child: titleText("Explore the Nature")),
                    searchMenu(Icons.search_rounded)
                  ],
                ),
              ),
              //Custom tab bar Custom indicator
              tabBarIndicator(),
              //popular categories
              popularCategories(),
              //popular list section
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  color: primaryColor,
                  height: 50,
                  child: const ScrollTextAnimation()),
              // popularListSection(),
              //popular section list
              imagesList()
            ],
          ),
        ),
      ),
    );
  }

  Widget searchMenu(IconData iconData) {
    return Container(
        height: 57.6,
        width: 57.6,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9.6),
            color: const Color(0x080a0928)),
        child: Icon(
          iconData,
          color: const Color(0xff808080),
        ));
  }

  Widget titleText(String title) {
    return Padding(
        padding: const EdgeInsets.only(left: 30, right: 20.8),
        child: Text(title,
            style: GoogleFonts.playfairDisplay(
                fontSize: 45.6, fontWeight: FontWeight.w700)));
  }

  Widget tabBarIndicator() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      color: Colors.white,
      padding: const EdgeInsets.only(top: 14.4),
      child: DefaultTabController(
        length: 4,
        initialIndex: tabIndex,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: AppBar(
              elevation: 0,
              backgroundColor: primaryColor,
              bottom: TabBar(
                dragStartBehavior: DragStartBehavior.start,
                isScrollable: true,
                labelColor: const Color(0xffFFFFFF),
                unselectedLabelColor: const Color(0xff8a8a8a),
                labelStyle: GoogleFonts.playfairDisplay(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1),
                unselectedLabelStyle: GoogleFonts.lateef(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                ),
                indicator: RoundedRectangleTabIndicator(
                    color: const Color(0xff000000), weight: 3, width: 16.4),
                onTap: (index) {
                  setState(() {
                    tabIndex = index;
                  });
                },
                tabs: const [
                  Tab(child: Text('Recommended')),
                  Tab(child: Text('Popular')),
                  Tab(child: Text('New Destination')),
                  Tab(child: Text('Hidden Gems'))
                ],
              ),
            ),
          ),
          body: TabBarView(children: [
            Column(
              children: const [
                SnappingList(),
              ],
            ),
            const Center(child: Text('Tab 2 Content')),
            const Center(child: Text('Tab 3 Content')),
            const Center(child: Text('Tab 4 Content')),
          ]),
        ),
      ),
    );
  }

  Widget popularCategories() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Popular Categories',
            style: GoogleFonts.abhayaLibre(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: const Color(0xff000000)),
          ),
          Text(
            'Show All',
            style: GoogleFonts.abhayaLibre(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: const Color(0xff808080)),
          )
        ],
      ),
    );
  }

  Widget popularListSection() {
    return Container(
        margin: const EdgeInsets.only(top: 25, left: 30),
        height: 50,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: recommendationsData.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (content, index) {
              return Container(
                margin: const EdgeInsets.only(right: 30),
                decoration: BoxDecoration(
                    color: const Color(0xffC0DEFF),
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Image.asset(recommendationsData[index].image, height: 16),
                      const SizedBox(width: 10),
                      Text(
                        recommendationsData[index].name,
                        style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff808080)),
                      )
                    ],
                  ),
                ),
              );
            }));
  }

  Widget imagesList() {
    return Container(
        margin: const EdgeInsets.only(top: 25, left: 30, bottom: 25),
        height: 164,
        child: ListView.builder(
            controller: scrollController,
            itemCount: recommendationsData.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (content, index) {
              return Container(
                width: 197,
                margin: const EdgeInsets.only(right: 25),
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent
                        .withOpacity(0.3), //popularlist[index].color
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(recommendationsData[index].image))),
              );
            }));
  }
}
