import 'package:flutter/material.dart';
import 'package:preferensusuario/Widgets/Menu_Drawer_Widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("texto1"),
          Divider(),
          Text("texto1"),
          Divider(),
          Text("texto1"),
          Divider(),
          
        ],
      ),
      drawer: MenuDrawer(),
    );
  }

}