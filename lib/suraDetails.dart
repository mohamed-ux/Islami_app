import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/provider/my_provider.dart';
import 'package:islamic_app/provider/sura_details_provider.dart';
import 'package:islamic_app/sura_Model.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'SuraDetails';

   SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {

  @override
  Widget build(BuildContext context) {
    var pro =Provider.of<MyProvider>(context);
    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;

    return Stack(
        children: [
        Image.asset(
            pro.mode==ThemeMode.light?
            'assets/images/default_bg.png':
            'assets/images/dark_bg.png'
        ),
    Scaffold(
    appBar: AppBar(
    title: Text(model.suraName, ),
    ),
body: ChangeNotifierProvider(
  create: (context)=>SuraDetailsProvider()..getSuraFile(model.index),
  builder:(context,child) =>Card(
    margin: EdgeInsets.all(20),
    color: Colors.white24,
    child:   Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
          itemCount: Provider.of<SuraDetailsProvider>(context).verses.length,
          itemBuilder: (context,index){
            return Text('${Provider.of<SuraDetailsProvider>(context).verses[index]}(${index+1})',
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onSecondary,
                  fontFamily: 'ElMessiri',
                  fontSize: 20,
                  fontWeight: FontWeight.w400
              ),);
          }),
    ),
  ),

),
    )
    ]);
  }


}
