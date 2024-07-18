import 'package:flutter/material.dart';
import 'package:islamic_app/Home/hadeth_details.dart';

import '../../generated/l10n.dart';

class AhadethTab extends StatelessWidget {
  const AhadethTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('assets/images/hadeth_logo.png',
        height: 219,),
        Divider(
          color: Color(0xFFB7935F),
          thickness: 3,
        ),
        Center(
          child: Text(S.of(context).ahadeth,style: TextStyle(
              fontFamily: 'ElMessiri',
              fontWeight: FontWeight.w600,
              fontSize: 25
          ),),
        ),
        Divider(
          color: Color(0xFFB7935F),
          thickness: 3,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                Navigator.pushNamed(context, HadethDetails.routeName,
                arguments: index);
              },
              child: Center(
                child: Text(' الحديث رقم ${index+1}',style: TextStyle(
                    fontFamily: 'ElMessiri',
                    fontWeight: FontWeight.w400,
                    fontSize: 25
                ),),
              ),
            );
          }),
        )
      ],

    );
  }
}
