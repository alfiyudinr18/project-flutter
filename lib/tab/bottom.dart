import 'package:flutter/material.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:covid/lokal.dart';
import 'package:covid/tab/tab.dart';
import 'package:covid/hotline.dart';

class TabScreen extends StatelessWidget {
  final Color color;
  TabScreen(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}

class ClassHome extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<ClassHome> {
  int currentPage = 0;
  final _pageOptions = [Lokal(), Option(), Hotline()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[currentPage],
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(
            iconData: Icons.home_outlined,
            title: "Home",
          ),
          TabData(
            iconData: Icons.room_outlined,
            title: "Weather",
          ),
          TabData(
            iconData: Icons.phone_outlined,
            title: "Food's",
          )
        ],
        onTabChangedListener: (int position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }
}

class HomeClaass extends StatefulWidget {
  final String title = "Flutter Bottom Tab demo";

  @override
  _StateHome createState() => _StateHome();
}

class _StateHome extends State<HomeClaass> {
  int currentTabIndex = 0;
  final _pageOptions = [Lokal(), Option(), Hotline()];
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.green,
        onTap: onTapped,
        currentIndex: currentTabIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.room_outlined),
            title: Text("Kasus"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_outlined),
            title: Text("Hotline"),
          )
        ],
      ),
    );
  }
}

class Home extends StatefulWidget {
  final String title = "Flutter Bottom Tab demo";

  @override
  _TabsDemoScreenState createState() => _TabsDemoScreenState();
}

class _TabsDemoScreenState extends State<Home> {
  int currentTabIndex = 0;
  final _pageOptions = [Lokal(), Option(), Hotline()];
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[currentTabIndex],
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.white,
          selectedItemBackgroundColor: Colors.green,
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Colors.black,
        ),
        selectedIndex: currentTabIndex,
        onSelectTab: onTapped,
        items: [
          FFNavigationBarItem(
            iconData: Icons.home_outlined,
            label: 'Home',
          ),
          FFNavigationBarItem(
            iconData: Icons.room_outlined,
            label: 'Kasus',
          ),
          FFNavigationBarItem(
            iconData: Icons.phone_outlined,
            label: 'Hotline',
          ),
        ],
      ),
    );
  }
}
