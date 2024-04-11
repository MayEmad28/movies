import 'package:flutter/material.dart';
import 'package:movies_app/browse/browse_screen.dart';
import 'package:movies_app/home/home_screen.dart';
import 'package:movies_app/search/search_screen.dart';
import 'package:movies_app/theme/my_theme.dart';
import 'package:movies_app/watchlist/watchList_screen.dart';
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
      bottomNavigationBar: Theme(
        data:Theme.of(context).copyWith(
          canvasColor: my_theme.blackcolor,
        ),
        child: BottomNavigationBar(
          onTap: (index){
            selectedIndex=index;
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(label: 'HOME',icon: ImageIcon(AssetImage('assets/images/Home icon.png'))
            ),
            BottomNavigationBarItem(label: 'SEARCH',icon: ImageIcon(AssetImage('assets/images/search.png'))),
            BottomNavigationBarItem(label: 'BROWSE',icon: ImageIcon(AssetImage('assets/images/browse.png'))),
            BottomNavigationBarItem(label: 'WATCHLIST',icon: ImageIcon(AssetImage('assets/images/watchList.png'))),

          ],
        ),
      ),
      body: tabs[selectedIndex],
    );
  }

  List<Widget> tabs=[
    home_screen(),
    search_screen(),
    browse_screen(),
    watchList_screen()
  ];
}
