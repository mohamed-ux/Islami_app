import 'package:flutter/material.dart';
import 'package:islamic_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

import '../generated/l10n.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      //height: MediaQuery.of(context).size.height *0.9,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.light);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.of(context).light,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Icon(Icons.done)
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.dark);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.of(context).dark,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
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
