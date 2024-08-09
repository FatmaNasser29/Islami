import 'package:flutter/material.dart';
import 'package:islami/moduls/quran/widgets/sura_details.dart';
import 'package:islami/moduls/quran/widgets/sura_name.dart';

class QuranView extends StatefulWidget {
  static const String routeName = "QuranView";
  const QuranView({super.key});

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
        child: Column(
      children: [
        Image.asset(
          "assets/images/quran_header_icn.png",
          scale: 4,
        ),
        Divider(),
        Row(
          children: [
            Expanded(
              child: Text(
                textAlign: TextAlign.center,
                "رقم السوره",
                style: theme.textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 30, child: VerticalDivider()),
            Expanded(
              child: Text(
                textAlign: TextAlign.center,
                "اسم السوره",
                style: theme.textTheme.titleMedium,
              ),
            )
          ],
        ),
        Divider(),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(context, SuraDetails.routeName);
              },
              child: SuraName(
                data: SuraData(
                    name: suraNames[index], number: (index + 1).toString()),
                // suraName: suraNames[index],
                // suraNumber: (index + 1).toString(),
              ),
            ),
            itemCount: suraNames.length,
          ),
        ),
      ],
    ));
  }
}
