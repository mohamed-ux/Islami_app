import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class SuraDetailsProvider extends ChangeNotifier{
List<String> verses=[];
  getSuraFile(int index)async{
    String sura = await(rootBundle.loadString('assets/files/quran/${index+1}.txt'));
    List<String> suralines= sura.split('\n');
    verses= suralines ;

notifyListeners();
  }
}