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
      drawer: _crearMenu(context),
    );
  }

  Widget _crearMenu(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/assets/img/menu-img.jpg"),fit: BoxFit.cover
              )
            ),
          ),

          ListTile(
            leading: Icon(Icons.home,color: Colors.blue,),
            title: Text("Home"),
            onTap: (){
              Navigator.pushReplacementNamed(context, "/home");
            },
          ),
          
          ListTile(
            leading: Icon(Icons.people,color: Colors.blue,),
            title: Text("People"),
            onTap: (){},
          ),
          
          ListTile(
            leading: Icon(Icons.settings,color: Colors.blue,),
            title: Text("Settings"),
            onTap: (){
              Navigator.pushReplacementNamed(context, "/settings");
            },
          ),
          
        ],
      ),
    );

  }
}