import 'dart:ui';

import 'package:flutter/foundation.dart';

class Languageprovider extends ChangeNotifier{

  Locale locale = Locale('ar');

  changeLanguage(Locale lang){
    locale=lang;
    notifyListeners();
  }

}