import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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