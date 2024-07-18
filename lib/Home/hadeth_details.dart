import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../provider/my_provider.dart';

class HadethDetails extends StatefulWidget {
  static const String routeName = 'hadethDetails';

  HadethDetails({super.key});

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  String verses = '';

  @override
  Widget build(BuildContext context) {
    var pro =Provider.of<MyProvider>(context);
    int hadethIndex = ModalRoute.of(context)?.settings.arguments as int;
    if (verses.isEmpty) {
      getHadethFile(hadethIndex);
    }
    return Stack(children: [
      Image.asset(pro.mode==ThemeMode.light?
      'assets/images/default_bg.png':
      'assets/images/dark_bg.png'),
      Scaffold(
        appBar: AppBar(
          title: Text(
            ' الحديث رقم ${hadethIndex + 1}',
          ),
        ),
        body: Card(
          color: Colors.white24,
          margin: EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(children: [
              Text(
                verses,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSecondary,
                    fontFamily: 'ElMessiri',
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              )
            ]),
          ),
        ),
      )
    ]);
  }

  getHadethFile(int index) async {
    String hadeth =
        await (rootBundle.loadString('assets/files/hadeth/h${index + 1}.txt'));
    verses = hadeth;
    print(verses);
    setState(() {});
  }
}
