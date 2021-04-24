import 'package:flutter/material.dart';
import 'package:covid/akses/get_post.dart';
import 'package:covid/akses/get_post_model.dart';
import 'package:format_indonesia/format_indonesia.dart';

class Lokal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GetIndonesia _getIndonesia = new GetIndonesia();
    var waktu = Waktu();
    return Scaffold(
      body: FutureBuilder(
        future: _getIndonesia.manggilPostData(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Indonesia>> snapshot) {
          if (snapshot.hasData) {
            List<Indonesia> dataPost = snapshot.data;
            return Container(
              child: ListView.builder(
                itemCount: dataPost.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.green[200], Colors.blue[200]]),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(100),
                              bottomRight: Radius.circular(100)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/doctor.png',
                                  height: 250,
                                  width: 290,
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                  child: Center(
                                    child: Text(
                                      'Kawal Covid',
                                      style: new TextStyle(
                                          fontSize: 28.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Cagliostro',
                                          shadows: [
                                            Shadow(
                                              color: Colors.black,
                                              blurRadius: 10.0,
                                              offset: Offset(5.0, 5.0),
                                            ),
                                          ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Column(
                          children: [
                            Container(
                              child: Center(
                                child: Text(
                                  'Kasus Indonesia',
                                  style: new TextStyle(
                                    fontSize: 28.0,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cagliostro',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 20,
                              child: Text(
                                "Terakhir Update : " + (waktu.yMMMMEEEEd()),
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black38),
                              ),
                            ),
                          ],
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
                                color: Colors.orange[50],
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 8.0,
                                    spreadRadius: 1.0,
                                  ),
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/positif.png',
                                  height: 50,
                                  width: 50,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      '',
                                    ),
                                    Text(
                                      'Positif',
                                      style: new TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      dataPost[index].positif,
                                      style: new TextStyle(
                                          fontSize: 15.0, color: Colors.orange),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(20.0),
                            margin: EdgeInsets.all(20.0),
                            width: 155,
                            decoration: BoxDecoration(
                                color: Colors.green[50],
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 8.0,
                                    spreadRadius: 1.0,
                                  ),
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/sembuhh.png',
                                  height: 50,
                                  width: 50,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      '',
                                    ),
                                    Text(
                                      'Sembuh',
                                      style: new TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      dataPost[index].sembuh,
                                      style: new TextStyle(
                                          fontSize: 15.0, color: Colors.green),
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
                            width: 350,
                            decoration: BoxDecoration(
                                color: Colors.red[50],
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 8.0,
                                    spreadRadius: 1.0,
                                  ),
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/mati.png',
                                  height: 70,
                                  width: 70,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Meninggal',
                                      style: new TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      dataPost[index].meninggal,
                                      style: new TextStyle(
                                          fontSize: 18.0, color: Colors.red),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
