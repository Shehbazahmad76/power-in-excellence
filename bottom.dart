import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'pages.dart';
import 'podcast.dart';
import 'profile_setting.dart';

class bottomnavbar extends StatefulWidget {
  const bottomnavbar({super.key});

  @override
  State<bottomnavbar> createState() => _bottomnavbarState();
}

class _bottomnavbarState extends State<bottomnavbar> {
 int _selectedIndex = 0;
static const List<Widget> _widgetOptions = <Widget>[
   homescreen(),
   Podcast(),
   Pages(),
    ProfileSetting()

  ];
   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Center(
        child:  _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Podcast',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/broadcast.png',
              height: 23,
              width: 23,
              color:
                  _selectedIndex == 1 ? Color(0xffEB7D22) : Color(0xff787878),
            ),
            label: 'Podcast',
          ),
          BottomNavigationBarItem(
            icon:Image.asset(
              'assets/pages.png',
              height: 23,
              width: 23,
              color:
                  _selectedIndex == 2 ? Color(0xffEB7D22) : Color(0xff787878),
            ),
            label: 'Pages',
            // Add a new line for full label
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/user.png',
                height: 23,
                width: 23,
                color: _selectedIndex == 3
                    ?  Color(0xffEB7D22) : Color(0xff787878),
                   ),
            label: 'Profile',
          ),
               ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xffEB7D22),
        unselectedItemColor: Color(0xff787878),
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );  }
}