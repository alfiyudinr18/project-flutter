import 'package:flutter/material.dart';
import 'package:covid/akses/get_post.dart';
import 'package:covid/akses/get_post_model.dart';

class Provinsi extends StatelessWidget {
  final GetPro _getPro = new GetPro();
  final items = List<int>.generate(34, (i) => i + 1);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/indo.png',
                      width: 350,
                      height: 200,
                    ),
                  ],
                ),
                padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Center(
                  child: Text(
                'Data Kasus Provinsi',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cagliostro',
                ),
              )),
              Padding(
                padding: EdgeInsets.all(6.0),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: FutureBuilder(
                  future: _getPro.manggilPostData(),
                  builder:
                      (context, AsyncSnapshot<List<Posprovinsi>> snapshot) {
                    if (snapshot.hasData) {
                      List<Posprovinsi> dataPost = snapshot.data;
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Center(
                          child: DataTable(
                            sortColumnIndex: 0,
                            sortAscending: true,
                            columns: [
                              DataColumn(
                                label: Text(
                                  'Provinsi',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                              DataColumn(
                                  label: Text('Positif',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ))),
                              DataColumn(
                                  label: Text('Sembuh',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ))),
                              DataColumn(
                                  label: Text('Meninggal',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ))),
                            ],
                            rows: dataPost
                                .map((Posprovinsi dataPost) => DataRow(cells: [
                                      DataCell(Text(dataPost.nama_provinsi)),
                                      DataCell(Text(dataPost.positif)),
                                      DataCell(Text(dataPost.sembuh)),
                                      DataCell(Text(dataPost.meninggal)),
                                    ]))
                                .toList(),
                          ),
                        ),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
