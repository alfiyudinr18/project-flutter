import 'package:flutter/material.dart';
import 'package:covid/akses/get_post_model.dart';
import 'package:covid/akses/get_post.dart';

class Negara extends StatelessWidget {
  final GetPosts _getPosts = new GetPosts();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: [
          Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/world.png',
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
                    'Data Kasus Negara',
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
                      future: _getPosts.manggilPostData(),
                      builder: (context, AsyncSnapshot<List<Posts>> snapshot) {
                        if (snapshot.hasData) {
                          List<Posts> dataPost = snapshot.data;
                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Center(
                              child: DataTable(
                                sortColumnIndex: 0,
                                sortAscending: true,
                                columns: [
                                  DataColumn(
                                    label: Text(
                                      'Negara',
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
                                    .map((Posts dataPost) => DataRow(cells: [
                                          DataCell(
                                              Text(dataPost.Country_Region)),
                                          DataCell(Text(
                                              dataPost.Confirmed.toString())),
                                          DataCell(Text(
                                              dataPost.Recovered.toString())),
                                          DataCell(
                                              Text(dataPost.Deaths.toString())),
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
        ],
      ),
    );
  }
}
