import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _sharedPref;

  static bool _isDarkMode = false;
  static int _gender = 1;
  static String _name = '';

  static Future init() async {
    _sharedPref = await SharedPreferences.getInstance();
  }

  static bool get isDarkMode {
    return _sharedPref.getBool('isDarkMode') ?? _isDarkMode;
  }

  static set isDarkMode(bool isDarkMode) {
    _isDarkMode = isDarkMode;
    _sharedPref.setBool('isDarkMode', isDarkMode);
  }

  static int get gender {
    return _sharedPref.getInt('gender') ?? _gender;
  }

  static set gender(int gender) {
    _gender = gender;
    _sharedPref.setInt('gender', gender);
  }

  static String get name {
    return _sharedPref.getString('name') ?? _name;
  }

  static set name(String name) {
    _name = name;
    _sharedPref.setString('name', name);
  }
}
