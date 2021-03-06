import 'package:flutter/foundation.dart';

class Post {
  //definisikan key nya

  final String positif;
  final String sembuh;
  final String meninggal;

  //definisikan ke object
  Post(
      {@required this.positif,
      @required this.sembuh,
      @required this.meninggal});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      positif: json['positif'] as String,
      sembuh: json['sembuh'] as String,
      meninggal: json['meninggal'] as String,
    );
  }
}

class Posts {
  //definisikan key nya
  final int OBJECTID;
  final String Country_Region;
  final int Confirmed;
  final int Deaths;
  final int Recovered;
  final int Active;

  //definisikan ke object
  Posts({
    @required this.Country_Region,
    @required this.Confirmed,
    @required this.Deaths,
    @required this.Recovered,
    @required this.OBJECTID,
    @required this.Active,
  });

  factory Posts.fromJson(Map<String, dynamic> json) {
    return Posts(
        Country_Region: json['attributes']['Country_Region'] as String,
        Confirmed: json['attributes']['Confirmed'] as int,
        Deaths: json['attributes']['Deaths'] as int,
        Recovered: json['attributes']['Recovered'] as int);
  }
}

class Pos {
  //definisikan key nya
  final String name;
  final String value;

  //definisikan ke object
  Pos({@required this.name, @required this.value});

  factory Pos.fromJson(Map<String, dynamic> json) {
    return Pos(
      name: json['name'] as String,
      value: json['value'] as String,
    );
  }
}

class Indonesia {
  //definisikan key nya
  final String positif;
  final String sembuh;
  final String meninggal;

  //definisikan ke object
  Indonesia(
      {@required this.positif,
      @required this.sembuh,
      @required this.meninggal});

  factory Indonesia.fromJson(Map<String, dynamic> json) {
    return Indonesia(
      positif: json['positif'] as String,
      sembuh: json['sembuh'] as String,
      meninggal: json['meninggal'] as String,
    );
  }
}

class Posprovinsi {
  //definisikan key nya

  final String nama_provinsi;
  final String positif;
  final String sembuh;
  final String meninggal;

  //definisikan ke object
  Posprovinsi(
      {@required this.nama_provinsi,
      @required this.positif,
      @required this.sembuh,
      @required this.meninggal});

  factory Posprovinsi.fromJson(Map<String, dynamic> json) {
    return Posprovinsi(
        nama_provinsi: json['nama_provinsi'] as String,
        positif: json['positif'] as String,
        sembuh: json['sembuh'] as String,
        meninggal: json['meninggal'] as String);
  }
}
