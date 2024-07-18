import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../generated/l10n.dart';
import '../../provider/my_provider.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {

  int counter = 0;
  int i = 0;
  double angle = 0;

  List<String> zekr = ['سبحان الله', 'الحمد لله','الله أكبر'];

  @override
  Widget build(BuildContext context) {
    var pro =Provider.of<MyProvider>(context);
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 75,
                    ),
                    AnimatedRotation(
                      turns: angle,
                      duration: Duration(seconds: 1),
                      child: Image.asset(
                        pro.mode==ThemeMode.light?
                        'assets/images/body_sebha_logo.png':
                        'assets/images/body_sebha_dark.png',
                        height: 234,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 140,),
                    Container(
                        //color: Colors.red,
                        child: Image.asset(
                      pro.mode==ThemeMode.light?
                      'assets/images/head_sebha_logo.png':
                      'assets/images/head_sebha_dark.png',
                      height: 105,
                    )),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 43,
        ),
        Text(S.of(context).numTasbeh,
            style: TextStyle(
                fontFamily: 'ElMessiri',
                fontSize: 25,
                fontWeight: FontWeight.w400)),
        SizedBox(
          height: 26,
        ),
        Container(
          alignment: Alignment.center,
          height: 81,
          width: 69,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(15)),
          child: Text(
            '$counter',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        SizedBox(
          height: 22,
        ),
        ElevatedButton(
          onPressed: () {
            if (counter < 33) {
              counter++;
              angle += 1 / 33;
              setState(() {});
            } else if(i<2){
              counter = 0;
              zekr[i++];
              setState(() {});
            }else{
              counter=0;
              i=0;
              setState(() {

              });
            }
          },
          child: Text(
            zekr[i],
            style: TextStyle(
              color: Colors.white,
                fontFamily: 'ElMessiri',
                fontSize: 15,
                fontWeight: FontWeight.w400),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              fixedSize: Size(137, 51)),
        )
      ],
    );
  }

  numTasbeh() {
    for (int j = 0; j < 3; j++) {
      zekr[j];

      counter = 0;
    }
  }
}
