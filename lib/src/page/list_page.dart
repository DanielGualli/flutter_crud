import 'package:flutter/material.dart';
import 'package:flutter_crud/src/db/operation.dart';
import 'package:flutter_crud/src/page/save_page.dart';

class ListPage extends StatelessWidget {
  // para cuando lo llammos
  static const String ROUTE = "/";
  
  get Operation => null;
  @override
  Widget build(BuildContext context) {
    Operation.notes();
    return Scaffold(
      // Ubicar un boton para navegar
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, SavePage.ROUTE);
        },
      ),
      appBar: AppBar(
        title: Text("Listado"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Nota 1"),
            ),
            ListTile(
              title: Text("Nota 2"),
            ),
            ListTile(
              title: Text("Nota 3"),
            ),
            ListTile(
              title: Text("Nota 4"),
            )
          ],
        ),
      ),
    );
  }
}