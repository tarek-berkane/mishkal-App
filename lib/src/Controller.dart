import 'dart:async' show Future, StreamController;
import 'package:mishkal/src/models/AppData.dart';
import 'package:mishkal/src/models/HtppRequest.dart';
import 'package:mishkal/src/models/ProgectsLinks.dart';
import 'package:mishkal/src/models/SharedPreferences.dart';
import 'package:mvc_pattern/mvc_pattern.dart' show ControllerMVC;

import 'models/Client.dart';
import 'models/DataBase.dart';

/// The Controller answers & responses to 'the events' while the Model execute 'the rules' and manipulates data.
class Con extends ControllerMVC {
  static String _textInput = '';
  static String _textInputOption = '';

  factory Con() {
    if (_this == null) _this = Con._();
    return _this;
  }
  static Con _this;

  Con._();
  static Con get con => _this;
//setTextInput is for textfiled
  static setTextInput(String text) {
    _textInput = text;
  }

  static String getTextInput() {
    return _textInput;
  }

  static setTextInputoption(String text) {
    _textInputOption = text;
  }

  //-----------------------------------------------
  static final SharedPreferencesTest _prf = SharedPreferencesTest();

//  ----------------- for pasing links ---------------
  static String getLInk(int a) => ArchSampleList.links[a];
  static String getName(int a) => ArchSampleList.name[a];
  static int getListLength() => ArchSampleList.name.length;

// ----------------- for get and set size text in pages ----------
  static setSize(double size) {
    return AppData.setSize(size);
  }

  static double getSize() => AppData.getSize();
  static double getSizeTitle() => AppData.getSizeTitle();
//-----------------for set mode night---------------
  static setModeN(bool a) => AppData.setModeN(a);
  static bool getModeN() => AppData.getModeN();
//-----------------for get color int ---------------
  static int getColor(String name) => AppData.getColor(name);

//--------------------for Shared Preferences -----------------
  static getModeNihtP() async {
    setModeN(await _prf.getModeN());
  }

  static getTextSP() async {
    setSize(await _prf.getTextSize());
  }
//-------------------------------------------------------------------

//insert into database
  static insertDB(text1, text2) async {
    await DataBaseP.db.newClient(Client(orginal: text1, tachkil: text2));
  }

//deleteClient
  static deleteById(int id) async {
    await DataBaseP.db.deleteClient(id);
  }

//-----------------------------------------------------------
  static Future<Map> setNormlRequestText(String text) async {
    return JsonRequest.jsonRequest(text, 'تشكيل');
  }

  static Future<Map> setOptionRequestText(String text, option) async {
    return JsonRequest.jsonRequest(text, option);
  }
  // static final model = Model();

}
