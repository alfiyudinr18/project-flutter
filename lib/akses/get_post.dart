import 'dart:convert';
import 'package:http/http.dart';
import 'get_post_model.dart';

class GetPost {
  final String getposturl = "https://api.kawalcorona.com/indonesia";

  //mengambil data
  Future<List<Post>> manggilPostData() async {
    Response res = await get(getposturl);
    //Merubah json ke string (raw)
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      //data ditampung ke dalam list dimodel post dan dirubah ke format json
      List<Post> postData =
          body.map((dynamic item) => Post.fromJson(item)).toList();
      return postData;
    } else {
      throw "tidak bisa mendapat data";
    }
  }
}

class GetPosts {
  final String getposturl = "https://api.kawalcorona.com/";

  //mengambil data
  Future<List<Posts>> manggilPostData() async {
    Response res = await get(getposturl);
    //Merubah json ke string (raw)
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      //data ditampung ke dalam list dimodel post dan dirubah ke format json
      List<Posts> postData =
          body.map((dynamic item) => Posts.fromJson(item)).toList();
      return postData;
    } else {
      throw "tidak bisa mendapat data";
    }
  }
}

class GetIndonesia {
  final String getposturl = "http://alfiyudinr.herokuapp.com/api/indonesia";

  //mengambil data
  Future<List<Indonesia>> manggilPostData() async {
    Response res = await get(getposturl);
    //Merubah json ke string (raw)
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body)['data'];
      //data ditampung ke dalam list dimodel post dan dirubah ke format json
      List<Indonesia> postData =
          body.map((dynamic item) => Indonesia.fromJson(item)).toList();
      return postData;
    } else {
      throw "tidak bisa mendapat data";
    }
  }
}

class GetPro {
  final String getposturl =
      "http://alfiyudinr.herokuapp.com/api/indonesia/provinsi";

  //mengambil data
  Future<List<Posprovinsi>> manggilPostData() async {
    Response res = await get(getposturl);
    //Merubah json ke string (raw)
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body)['data'];
      //data ditampung ke dalam list dimodel post dan dirubah ke format json
      List<Posprovinsi> postData =
          body.map((dynamic item) => Posprovinsi.fromJson(item)).toList();
      return postData;
    } else {
      throw "tidak bisa mendapat data";
    }
  }
}
