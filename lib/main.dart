import 'package:componentes_ok/pages/alert_page.dart';
import 'package:componentes_ok/pages/avatar_page.dart';
import 'package:componentes_ok/pages/cards_page.dart';
import 'package:componentes_ok/pages/home_page.dart';
import 'package:componentes_ok/pages/micards_page.dart';
import 'package:componentes_ok/pages/inputs_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      // HOME sirve si tenemos una pantalla
      // con varias pantallas en lugar de HOME -> ROUTES
      routes: <String, WidgetBuilder>{
        // CREACION DE RUTAS
        // ESPECIFICAR RUTAS
        '/': (BuildContext context) => HomePage(),
        'alert' : (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage(),
        'card'  : (BuildContext context) => CardPage(),
        'miCard' :(BuildContext context) => MiCardPage(),
        'inputs' :(BuildContext context) => InputPage(),

      },
    );
  }
}
