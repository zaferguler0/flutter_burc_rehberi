import 'package:flutter/material.dart';
import 'package:flutterburcrehberi/burc_detay.dart';
import 'burc_liste.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Burç Rehberi",
      debugShowCheckedModeBanner: false,
      initialRoute: "/burcListesi",
      routes: {
        "/": (context) => BurcListesi(),
        "/burcListesi": (context) => BurcListesi(),
      },
      onGenerateRoute: (RouteSettings settings) {
        List<String> pathElementleri = settings.name.split("/");
        if (pathElementleri[1] == 'burcDetay') {
          return MaterialPageRoute(
              builder: (context) => BurcDetay(int.parse(pathElementleri[2])));
        }
        return null;
      },
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
