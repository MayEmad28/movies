import 'package:flutter/material.dart';
import 'package:movies_app/browse/browse_screen.dart';
import 'package:movies_app/search/search_screen.dart';
import 'package:movies_app/theme/my_theme.dart';
import 'package:movies_app/watchlist/watchList_screen.dart';

import 'home_teb/home_tab.dart';
class home extends StatefulWidget {
  static  String routeName='home';

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      bottomNavigationBar: Theme(
        data:Theme.of(context).copyWith(
          canvasColor: Color(0xff1A1A1A),
        ),
        child: BottomNavigationBar(
          selectedItemColor: my_theme.yellowcolor,
          currentIndex: selectedIndex,
          onTap: (index){
            selectedIndex=index;
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(
                label: 'HOME',icon:Icon(Icons.home)
            ),
            BottomNavigationBarItem(label: 'SEARCH',icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: 'BROWSE',icon: Icon(Icons.movie_creation)),
            BottomNavigationBarItem(label: 'WATCHLIST', icon: Icon(Icons.class_)),
          ],
        ),
      ),
      body: tabs[selectedIndex],
    );
  }

  List<Widget> tabs=[
    home_tab(),
    search_screen(),
    browse_screen(),
    watchList_screen()
  ];
}
