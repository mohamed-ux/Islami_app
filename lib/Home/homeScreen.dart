import 'package:flutter/material.dart';
import 'package:islamic_app/Home/tabs/ahadeth_tab.dart';
import 'package:islamic_app/Home/tabs/quran_tab.dart';
import 'package:islamic_app/Home/tabs/radio_tab.dart';
import 'package:islamic_app/Home/tabs/sebha_tab.dart';
import 'package:islamic_app/Home/tabs/setting_tab.dart';
import 'package:islamic_app/provider/my_provider.dart';
import 'package:islamic_app/themeMode.dart';
import 'package:provider/provider.dart';

import '../generated/l10n.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'homeScreen';

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var pro =Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(
          pro.mode==ThemeMode.light?
          'assets/images/default_bg.png':
          'assets/images/dark_bg.png'
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              S.of(context).title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (value) {
              selectedIndex = value;
              setState(() {});
            },

            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                  label: S.of(context).quran,
                 // backgroundColor: MyTheme.primaryColor
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                  label: S.of(context).sebha,
                  //backgroundColor: MyTheme.primaryColor
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                  label: S.of(context).radio,

                  //backgroundColor: MyTheme.primaryColor
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                  label: S.of(context).hadeth,
                  //backgroundColor: MyTheme.primaryColor
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: S.of(context).setting,
                  //backgroundColor: MyTheme.primaryColor
              ),
            ],
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    SebhaTab(),
    RadioTab(),
    AhadethTab(),
    SettingTab()
  ];
}
