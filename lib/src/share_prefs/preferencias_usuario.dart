
import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario{

  //########################### patron singleton ##########################
  static final PreferenciasUsuario _instancia = new PreferenciasUsuario._internal();

  factory PreferenciasUsuario(){
    return _instancia;
  }
  PreferenciasUsuario._internal();
  //########################### patron singleton ##########################

  SharedPreferences _prefs;
  
  initPrefs()async {
    this._prefs = await SharedPreferences.getInstance();
  }

  // GET

  get genero{ 
    return _prefs.getInt("genero") ?? 1 ; 
  }

  set genero (int value){
    _prefs.setInt("genero", value);
  }

   get colorSecundario{ 
    return _prefs.getBool("color") ?? true ; 
  }

  set colorSecundario (bool value){
    _prefs.setBool("color", value);
  }

   get nombre{ 
    return _prefs.getString("nombre") ?? "Alejandro" ; 
  }

  set nombre (String value){
    _prefs.setString("nombre", value);
  }

   get ultimaPage{ 
    return _prefs.getString("pagina") ?? "/home" ; 
  }

  set ultimaPage (String value){
    _prefs.setString("pagina", value);
  }


}