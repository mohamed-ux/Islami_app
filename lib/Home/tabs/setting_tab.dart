import 'package:flutter/material.dart';
import 'package:islamic_app/bottem_sheet/language_bottom_sheet.dart';
import 'package:islamic_app/bottem_sheet/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';

import '../../generated/l10n.dart';
import '../../provider/language_provider.dart';
import '../../provider/my_provider.dart';

class SettingTab extends StatefulWidget {

  SettingTab({super.key});

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var pro =Provider.of<MyProvider>(context);
    var language =Provider.of<Languageprovider>(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            S.of(context).theme,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return ThemeBottomSheet();
                  });
            },
            child: Container(
              padding: EdgeInsets.all(8),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border:
                    Border.all(color: Theme.of(context).colorScheme.secondary),
              ),
              child: Text(
                pro.mode==ThemeMode.light?
                S.of(context).light:S.of(context).dark,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            S.of(context).language,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return LangugeBottomSheet();
                  });
            },
            child: Container(
              padding: EdgeInsets.all(8),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border:
                    Border.all(color: Theme.of(context).colorScheme.secondary),
              ),
              child: Text(
                language.locale==Locale('ar')?
                S.of(context).arabic:
                S.of(context).english,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          )
        ],
      ),
    );
  }
}
