import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesTest {
  ///
  /// Instantiation of the SharedPreferences library
  ///
  final String _textS = "textSize";
  final String _modeN = "modeNight";

//--------------------------------------------------------------------------
  Future<bool> getModeN() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getBool(_modeN) ?? false;
  }

  Future<bool> setModeN(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.setBool(_modeN, value);
  }

//--------------------------------------------------------------------------
  Future<double> getTextSize() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getDouble(_textS) ?? 18;
  }

  Future<bool> setTextSize(double value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.setDouble(_textS, value);
  }
//-------------------------------------------------------------------------
}
