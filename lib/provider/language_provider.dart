import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Languageprovider extends ChangeNotifier {
  Locale locale = Locale('ar');

  Future<void> getLocal() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isAr = prefs.getBool('isar');
    if (isAr != null) {
      if (isAr =true) {
        locale = Locale('ar');
      } else {
        locale = Locale('en');
      }
    }
    notifyListeners();
  }

  Future<void> changeLanguage(Locale lang) async {
    locale = lang;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isar', locale == Locale('ar'));
    notifyListeners();
  }
}
