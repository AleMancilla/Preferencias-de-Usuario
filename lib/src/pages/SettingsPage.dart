import 'package:flutter/material.dart';
import 'package:preferensusuario/Widgets/Menu_Drawer_Widget.dart';
import 'package:preferensusuario/src/share_prefs/preferencias_usuario.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  int _genero;
  bool _colorSecundario ;
  String _nombre;

  TextEditingController _textController;

  final prefs = PreferenciasUsuario();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _genero = prefs.genero;
    _colorSecundario = prefs.colorSecundario;
    _nombre = prefs.nombre;
    _textController = new TextEditingController(text: prefs.nombre);
  }

  _setSelectedRadio(int valor){
    prefs.genero = valor;
    _genero = valor;
    setState(() { });
  }
  _setColorSecundario(bool valor){
    prefs.colorSecundario = valor;
    _colorSecundario = valor;
    setState(() { });
  }
  _setNombre(String valor){
    prefs.nombre =valor;
    _nombre = valor;
    setState(() { });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: (prefs.colorSecundario)?Colors.teal:Colors.blue,
      ),
      body: ListView(
        children: <Widget>[

          Container(
            padding: EdgeInsets.all(5.0),
            child: Text('Settings', style: TextStyle(fontSize: 45.0,fontWeight: FontWeight.bold),),
          ),

          Divider(),

          SwitchListTile(
            value: _colorSecundario, 
            onChanged: ( value ){
              _setColorSecundario(value);
            },
            title: Text("Color secundario"),
          ),

          RadioListTile(
            value: 1, 
            groupValue: _genero, 
            title: Text("Masculino"),
            onChanged: _setSelectedRadio 
          ),
          RadioListTile(
            value: 2, 
            groupValue: _genero, 
            title: Text("Femenino"),
            onChanged: _setSelectedRadio
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
              onChanged: (value){
                _setNombre(value);
              },
            ),
          ),


        ],
      ),
      drawer: MenuDrawer(),
    );
  }
}