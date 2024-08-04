import 'package:flutter/material.dart';
import 'package:islamic_app/suraDetails.dart';
import 'package:islamic_app/sura_Model.dart';

import '../../generated/l10n.dart';

class QuranTab extends StatelessWidget {
   QuranTab({super.key});

  List<int> ayatNumbers = [
    7, // Al-Fatihah
    286, // Al-Baqarah
    200, // Al-Imran
    176, // An-Nisa
    120, // Al-Maidah
    165, // Al-An'am
    206, // Al-A'raf
    75, // Al-Anfal
    129, // At-Tawbah
    109, // Yunus
    123, // Hud
    111, // Yusuf
    43, // Ar-Ra'd
    52, // Ibrahim
    99, // Al-Hijr
    128, // An-Nahl
    111, // Al-Isra
    110, // Al-Kahf
    98, // Maryam
    135, // Ta-Ha
    112, // Al-Anbiya
    78, // Al-Hajj
    118, // Al-Mu’minun
    64, // An-Nur
    77, // Al-Furqan
    227, // Ash-Shu'ara
    93, // An-Naml
    88, // Al-Qasas
    69, // Al-Ankabut
    60, // Ar-Rum
    34, // Luqman
    30, // As-Sajda
    73, // Al-Ahzab
    54, // Saba
    45, // Fatir
    83, // Ya-Sin
    182, // As-Saffat
    88, // Sad
    75, // Az-Zumar
    85, // Ghafir
    54, // Fussilat
    53, // Ash-Shura
    89, // Az-Zukhruf
    59, // Ad-Dukhan
    37, // Al-Jathiya
    35, // Al-Ahqaf
    38, // Muhammad
    29, // Al-Fath
    18, // Al-Hujurat
    45, // Qaf
    60, // Adh-Dhariyat
    49, // At-Tur
    62, // An-Najm
    55, // Al-Qamar
    78, // Ar-Rahman
    96, // Al-Waqi'a
    29, // Al-Hadid
    22, // Al-Mujadila
    24, // Al-Hashr
    13, // Al-Mumtahina
    14, // As-Saff
    11, // Al-Jumu'a
    11, // Al-Munafiqun
    18, // At-Taghabun
    12, // At-Talaq
    12, // At-Tahrim
    30, // Al-Mulk
    52, // Al-Qalam
    52, // Al-Haqqah
    44, // Al-Ma'arij
    28, // Nuh
    28, // Al-Jinn
    20, // Al-Muzzammil
    56, // Al-Muddathir
    40, // Al-Qiyamah
    31, // Al-Insan
    50, // Al-Mursalat
    40, // An-Naba
    46, // An-Nazi'at
    42, // Abasa
    29, // At-Takwir
    19, // Al-Infitar
    36, // Al-Mutaffifin
    25, // Al-Inshiqaq
    22, // Al-Buruj
    17, // At-Tariq
    19, // Al-A'la
    26, // Al-Ghashiyah
    30, // Al-Fajr
    20, // Al-Balad
    15, // Ash-Shams
    21, // Al-Lail
    11, // Ad-Duha
    8, // Ash-Sharh
    8, // At-Tin
    19, // Al-Alaq
    5, // Al-Qadr
    8, // Al-Bayyina
    8, // Az-Zalzalah
    11, // Al-Adiyat
    11, // Al-Qari'a
    8, // At-Takathur
    3, // Al-Asr
    9, // Al-Humazah
    5, // Al-Fil
    4, // Quraish
    7, // Al-Ma'un
    3, // Al-Kawthar
    6, // Al-Kafirun
    3, // An-Nasr
    5, // Al-Masad
    4, // Al-Ikhlas
    5, // Al-Falaq
    6 // An-Nas
  ];
  List<String> suraName=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/images/qur2an_screen_logo.png',
          height: 227,
        ),
        Table(
          border: TableBorder.all(color: Theme.of(context).colorScheme.secondary, width: 3),
          children: [
            TableRow(children: [
              TableCell(
                  child: Padding(
                padding: EdgeInsets.symmetric(vertical: 3.5, horizontal: 3),
                child: Text(
                  S.of(context).NumberofAyat,
                  style: TextStyle(
                      fontFamily: 'ElMessiri',
                      fontWeight: FontWeight.w600,
                      fontSize: 25),
                ),
              )),
              TableCell(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 3.5, horizontal: 10),
                    child: Text(
                      S.of(context).SuraName,
                style: TextStyle(
                      fontFamily: 'ElMessiri',
                      fontWeight: FontWeight.w600,
                      fontSize: 25),
              ),
                  )),
            ]),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: (){
                  Navigator.pushNamed(context, SuraDetails.routeName,
                  arguments: SuraModel(suraName[index], index));
                },
                child: Table(
                  border: TableBorder.symmetric(
                      inside: BorderSide(width: 3,
                          color: Theme.of(context).colorScheme.secondary)),
                  children: [
                    TableRow(children: [
                      TableCell(
                          child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 3.5, horizontal: 60),
                        child: Text(
                          '${ayatNumbers[index]}',
                          style: TextStyle(
                              fontFamily: 'ElMessiri',
                              fontWeight: FontWeight.w600,
                              fontSize: 25),
                        ),
                      )),
                      TableCell(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.5, horizontal: 10),
                            child: Text(
                        suraName[index],
                        style: TextStyle(
                              fontFamily: 'ElMessiri',
                              fontWeight: FontWeight.w600,
                              fontSize: 25),
                      ),
                          )),
                    ]),
                  ],
                ),
              );
            },
            itemCount: 114,
          ),
        )
      ],
    );
  }
}
