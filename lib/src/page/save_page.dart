import 'package:flutter/material.dart';

class SavePage extends StatelessWidget {
  // variable de la ruta
  static const String ROUTE = "/save";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guardar"),
      ),
      body: Container(
        child: _FormSave(),
      ),
    );
  }
}

class _FormSave extends StatelessWidget {
  final titleController = TextEditingController();
  final ConController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Form(
        key:_formkey,
        child: Column(
          children: <Widget>[
            TextFormField(
            controller: titleController,
              validator: (value) {
                if(value!.isEmpty) {
                  return "Tiene que ingresar datos";
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: "Titulo",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)))),
            ),
            SizedBox(
              height: 15.0,
            ),
            TextFormField(
              // Agregar mas propiedades
              maxLines: 15,
              maxLength: 200,
              validator: (value) {
                if(value!.isEmpty) {
                  return "Tiene que ingresar datos";
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: "Contenido",                   
                  border: OutlineInputBorder()),
            ),
            // SizedBox(
            //   height: 15,
            // ),
            ElevatedButton(
              child: Text("Guardar"),
              onPressed: ((){
                if(_formkey.currentState!.validate()){
                  print("Guardar");
                }
              }),              
              )
            
          ],
        ),
      ),
    );
  }
}
// clockwing