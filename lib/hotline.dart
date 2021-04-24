import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Hotline extends StatelessWidget {
  final String telephoneKesehatan = "021-5210-411";
  final String telephoneJakarta = "112";
  final String telephoneJateng = "024-358-0713";
  final String telephoneJabar = "119";
  final String telephoneJatim = "031-843-0313";
  final String telephoneYogyakarta = "0274-555-585";

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Hotline',
                  style: new TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Acme',
                  ),
                ),
                Text(''),
                Text(
                  'Layanan darurat via telepon yang disediakan oleh Kementrian Kesehatan dan juga Pemprov-Pemprov wilayah Indonesia.',
                  style: TextStyle(letterSpacing: 2, wordSpacing: 2),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              width: 155,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    'assets/images/logo-kesehatan.png',
                    height: 100,
                    width: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(''),
                      InkWell(
                        onTap: _kesehatan,
                        child: Text(
                          '021-5210-411',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 16.0,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Text(''),
                      Text(
                        'Kementrian',
                      ),
                      Text('Kesehatan'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              width: 155,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    'assets/images/jakarta.png',
                    height: 100,
                    width: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(''),
                      InkWell(
                        onTap: _jakarta,
                        child: Text(
                          '112',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 16.0,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Text(''),
                      Text(
                        'Pemprov',
                      ),
                      Text(
                        'DKI Jakarta',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              width: 155,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    'assets/images/jateng.png',
                    height: 100,
                    width: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(''),
                      InkWell(
                        onTap: _jateng,
                        child: Text(
                          '024-358-0713',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 16.0,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Text(''),
                      Text(
                        'Pemprov',
                      ),
                      Text('Jawa Tengah'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              width: 155,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    'assets/images/jabar.png',
                    height: 100,
                    width: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(''),
                      InkWell(
                        onTap: _jabar,
                        child: Text(
                          '119',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 16.0,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Text(''),
                      Text(
                        'Pemprov',
                      ),
                      Text('Jawa Barat'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              width: 155,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    'assets/images/jatim.png',
                    height: 100,
                    width: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(''),
                      InkWell(
                        onTap: _jatim,
                        child: Text(
                          '031-843-0313',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 16.0,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Text(''),
                      Text(
                        'Pemprov',
                      ),
                      Text('Jawa Timur'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              width: 155,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    'assets/images/yogyakarta.png',
                    height: 100,
                    width: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(''),
                      InkWell(
                        onTap: _yogyakarta,
                        child: Text(
                          '0274-555-585',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 16.0,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Text(''),
                      Text(
                        'Pemprov',
                      ),
                      Text('D.I Yogyakarta'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  _kesehatan() async {
    String telephoneUrl = "tel:$telephoneKesehatan";

    if (await canLaunch(telephoneUrl)) {
      await launch(telephoneUrl);
    } else {
      throw "Can't phone that number.";
    }
  }

  _jakarta() async {
    String telephoneUrl = "tel:$telephoneJakarta";

    if (await canLaunch(telephoneUrl)) {
      await launch(telephoneUrl);
    } else {
      throw "Can't phone that number.";
    }
  }

  _jateng() async {
    String telephoneUrl = "tel:$telephoneJateng";

    if (await canLaunch(telephoneUrl)) {
      await launch(telephoneUrl);
    } else {
      throw "Can't phone that number.";
    }
  }

  _jabar() async {
    String telephoneUrl = "tel:$telephoneJabar";

    if (await canLaunch(telephoneUrl)) {
      await launch(telephoneUrl);
    } else {
      throw "Can't phone that number.";
    }
  }

  _jatim() async {
    String telephoneUrl = "tel:$telephoneJatim";

    if (await canLaunch(telephoneUrl)) {
      await launch(telephoneUrl);
    } else {
      throw "Can't phone that number.";
    }
  }

  _yogyakarta() async {
    String telephoneUrl = "tel:$telephoneYogyakarta";

    if (await canLaunch(telephoneUrl)) {
      await launch(telephoneUrl);
    } else {
      throw "Can't phone that number.";
    }
  }
}
