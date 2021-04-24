import 'package:flutter/material.dart';
import 'package:covid/lokal.dart' as lokal;
import 'package:covid/tab/tab.dart' as tab;
import 'package:covid/hotline.dart' as hotline;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new lokal.Lokal(),
          new tab.Option(),
          new hotline.Hotline(),
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.green[200],
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(
                Icons.home_outlined,
                color: Colors.grey[800],
              ),
            ),
            new Tab(
              icon: new Icon(
                Icons.menu,
                color: Colors.grey[800],
              ),
            ),
            new Tab(
              icon: new Icon(
                Icons.phone_outlined,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
