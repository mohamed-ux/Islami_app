import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset('assets/images/radio_image.png',height: 222),
        Text(S.of(context).radioQuran,style: TextStyle(
            fontFamily: 'ElMessiri',
            fontSize: 25,
            fontWeight: FontWeight.w400
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.skip_previous, size: 50, color: Color(0xFFB7935F)),
            //SizedBox(width: 20),
            Icon(Icons.play_arrow, size: 50,  color: Color(0xFFB7935F)),
            //SizedBox(width: 20),
            Icon(Icons.skip_next, size: 50,  color: Color(0xFFB7935F)),
          ],
        )
      ],
    );
  }
}
