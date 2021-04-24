import 'package:flutter/material.dart';
import 'package:covid/provinsi.dart' as provinsi;
import 'package:covid/negara.dart' as negara;

class Option extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Option> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 2);
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
      appBar: new AppBar(
        elevation: 0,
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        title: new TabBar(
          unselectedLabelColor: Colors.green[400],
          indicatorSize: TabBarIndicatorSize.label,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.green[400]),
          controller: controller,
          tabs: <Widget>[
            new Tab(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.green[400], width: 1)),
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Provinsi"),
                ),
              ),
            ),
            new Tab(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.green[400], width: 1)),
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Negara"),
                ),
              ),
            ),
          ],
        ),
        //bottom
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new provinsi.Provinsi(),
          new negara.Negara(),
        ],
      ),
    );
  }
}
