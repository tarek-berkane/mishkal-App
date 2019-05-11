import 'package:mishkal/src/models/SharedPreferences.dart';

class AppData {
  
  static Map<String, int> _morningColor = {
    'title':0xffd33f42,
    'text': 0xFF000000,
    'card1': 0xff3BF2FE,
    'card2': 0xffAAFAFF,
    'appbar': 0xff83FA7C,
    'button': 0xff83FA7C,
    'textLink': 0xFF000000,
    'background': 0xFFFFFFFF,
    'backgroundText': 0xffC4C4C4,
  };
  static Map _nightColor = {
    'title':0xff092680,
    'text': 0xFFD8D8D8,
    'card1': 0xff738A8B,
    'card2': 0xff2F2F2F,
    'appbar': 0xff383838,
    'button': 0xff383838,
    'textLink': 0xFFFFFFFF,
    'background': 0xFF000000,
    'backgroundText': 0xff7C7C7C,
  };


  static final SharedPreferencesTest _prf = SharedPreferencesTest();
  static double _size = 20;
  static bool _modeNigth = false;

  static double getSize() => _size;
  static bool getModeN() => _modeNigth;
  static double getSizeTitle() =>  _size + 4;
  static int getColor(String name) =>
      _modeNigth ? _nightColor[name] : _morningColor[name];

  static setModeN(bool a) {
    _prf.setModeN(a);
    return _modeNigth = a;
  }

  static setSize(double size) {
    _prf.setTextSize(size);
    return _size = size;
  }
}
