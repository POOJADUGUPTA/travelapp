import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationBarTravel extends StatefulWidget {
  const BottomNavigationBarTravel({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarTravelState createState() =>
      _BottomNavigationBarTravelState();
}

class _BottomNavigationBarTravelState extends State<BottomNavigationBarTravel> {
  int _selectIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  var bottomNavStyle =
      GoogleFonts.lato(fontWeight: FontWeight.w500, fontSize: 12);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      decoration: const BoxDecoration(
        color: Color(0x080a0928),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        // boxShadow: [
        //   BoxShadow(
        //       color: Colors.grey.withOpacity(0.3),
        //       spreadRadius: 2,
        //       blurRadius: 16,
        //       offset: const Offset(0, 5))
        // ]
      ),
      child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: _selectIndex == 0
                    ? const Icon(
                        Icons.home,
                        color: Color(0xff5CB8E4),
                      )
                    : const Icon(Icons.home, color: Color(0xff73777B)),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: _selectIndex == 1
                    ? const Icon(
                        Icons.favorite_sharp,
                        color: Color(0xff5CB8E4),
                      )
                    : const Icon(Icons.favorite_sharp,
                        color: Color(0xff73777B)),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: _selectIndex == 2
                    ? const Icon(
                        Icons.add_comment_outlined,
                        color: Color(0xff5CB8E4),
                      )
                    : const Icon(Icons.add_comment_outlined,
                        color: Color(0xff73777B)),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: _selectIndex == 3
                    ? const Icon(
                        Icons.notifications_on_outlined,
                        color: Color(0xff5CB8E4),
                      )
                    : const Icon(Icons.notifications_on_outlined,
                        color: Color(0xff73777B)),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: _selectIndex == 4
                    ? const Icon(
                        Icons.person_add_alt,
                        color: Color(0xff5CB8E4),
                      )
                    : const Icon(Icons.person_add_alt,
                        color: Color(0xff73777B)),
                label: 'Home'),
          ],
          currentIndex: _selectIndex,
          onTap: _onItemTapped,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0),
    );
  }
}
