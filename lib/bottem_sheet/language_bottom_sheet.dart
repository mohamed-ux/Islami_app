import 'package:flutter/material.dart';
import 'package:islamic_app/provider/language_provider.dart';
import 'package:provider/provider.dart';

import '../generated/l10n.dart';

class LangugeBottomSheet extends StatelessWidget {
  const LangugeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var language =Provider.of<Languageprovider>(context);
    return Container(
      //height: MediaQuery.of(context).size.height *0.9,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: (){
                language.changeLanguage(Locale('ar'));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text(S.of(context).arabic,style: Theme.of(context).textTheme.bodyLarge,),
                  Icon(Icons.done)
                ],
              ),
            ),
            SizedBox(height: 12,),
            InkWell(
              onTap: (){
                language.changeLanguage(Locale('en'));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text(S.of(context).english,style: Theme.of(context).textTheme.bodyLarge,),
                  Icon(Icons.done)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
