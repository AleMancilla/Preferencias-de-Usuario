import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Column(
        children: <Widget>[
          Text("texto1"),
          Divider(),
          Text("texto1"),
          Divider(),
          Text("texto1"),
          Divider(),
          
        ],
      ),
    );
  }
}