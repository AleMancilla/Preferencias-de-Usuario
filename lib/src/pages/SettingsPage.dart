import 'package:flutter/material.dart';
import 'package:preferensusuario/Widgets/Menu_Drawer_Widget.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        children: <Widget>[
          Text("texto1"),
          Divider(),
          
        ],
      ),
      drawer: MenuDrawer(),
    );
  }
}