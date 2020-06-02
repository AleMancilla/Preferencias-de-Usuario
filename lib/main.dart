import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:preferensusuario/src/pages/HomePage.dart';
import 'package:preferensusuario/src/pages/SettingsPage.dart';
import 'package:preferensusuario/src/share_prefs/preferencias_usuario.dart';
 
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();
  return runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final prefs = PreferenciasUsuario();
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: prefs.ultimaPage,
      routes: {
        "/home": (BuildContext context) => HomePage(),
        "/settings": (BuildContext context) => SettingPage(),
      },
    );
  }
}