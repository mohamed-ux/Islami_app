//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:islamic_app/Home/hadeth_details.dart';
import 'package:islamic_app/Home/homeScreen.dart';
import 'package:islamic_app/provider/language_provider.dart';
import 'package:islamic_app/provider/my_provider.dart';
import 'package:islamic_app/suraDetails.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamic_app/themeMode.dart';
import 'package:provider/provider.dart';
import 'generated/l10n.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create:(context)=>MyProvider()),
    ChangeNotifierProvider(create:(context)=>Languageprovider()),
  ],
    child:const MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    var language = Provider.of<Languageprovider>(context);
    return MaterialApp(
      locale: language.locale,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      themeMode: provider.mode,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
    );
  }
}
