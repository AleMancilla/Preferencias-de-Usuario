import 'package:flutter/material.dart';
import 'package:preferensusuario/Widgets/Menu_Drawer_Widget.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  bool _colorSecundario =true ;
  int _genero =1;
  String _nombre = 'Pedro';

  TextEditingController _textController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textController = new TextEditingController(text: _nombre);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: ListView(
        children: <Widget>[

          Container(
            padding: EdgeInsets.all(5.0),
            child: Text('Settings', style: TextStyle(fontSize: 45.0,fontWeight: FontWeight.bold),),
          ),

          Divider(),

          SwitchListTile(
            value: true, 
            onChanged: ( value ){
              setState(() {  
                _colorSecundario = value;
              });
            },
            title: Text("Color secundario"),
          ),

          RadioListTile(
            value: 1, 
            groupValue: _genero, 
            title: Text("Masculino"),
            onChanged: (value){
              setState(() {
                _genero = value;
              });
            }
          ),
          RadioListTile(
            value: 2, 
            groupValue: _genero, 
            title: Text("Femenino"),
            onChanged: (value){
              setState(() {
                _genero = value;
              });
            }
          ),

          Divider(),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: 'Nombre de la persona usando el telefono'
              ),
              onChanged: (value){},
            ),
          ),


        ],
      ),
      drawer: MenuDrawer(),
    );
  }
}