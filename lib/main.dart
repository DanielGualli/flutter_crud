import 'package:flutter/material.dart';
import 'package:flutter_crud/src/page/list_page.dart';
import 'package:flutter_crud/src/page/save_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      // Crear la rutas del proyecto
      initialRoute: "/",
      routes: {
        // Llamar a las páginas
        ListPage.ROUTE: (_) => ListPage(),
        SavePage.ROUTE: (_) => SavePage()
      },
    );
  }
}