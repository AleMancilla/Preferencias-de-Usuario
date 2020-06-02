import 'package:flutter/material.dart';
import 'package:preferensusuario/Widgets/Menu_Drawer_Widget.dart';
import 'package:preferensusuario/src/share_prefs/preferencias_usuario.dart';

class HomePage extends StatelessWidget {
  final prefs = PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    prefs.ultimaPage = "/home";
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        backgroundColor: (prefs.colorSecundario)?Colors.teal:Colors.blue,
      ),
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Color secundario: ${prefs.colorSecundario}"),
          Divider(),
          Text("Genero ${prefs.genero}"),
          Divider(),
          Text("Nombre de Usuario: ${prefs.nombre}"),
          Divider(),
          
        ],
      ),
      drawer: MenuDrawer(),
    );
  }

}