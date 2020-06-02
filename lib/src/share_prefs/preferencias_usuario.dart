
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


}