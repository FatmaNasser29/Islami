import 'package:flutter/material.dart';
import 'package:islami/moduls/hadith/hadith_view.dart';
import 'package:islami/moduls/quran/quran_view.dart';
import 'package:islami/moduls/radio/radio_view.dart';
import 'package:islami/moduls/sebha/sebha_view.dart';
import 'package:islami/moduls/settings/settings_view.dart';

class LayOut extends StatefulWidget {
  static const String routeName = "layout";

  const LayOut({super.key});

  @override
  State<LayOut> createState() => _LayOutState();
}

class _LayOutState extends State<LayOut> {
  int selectedindex = 0;
  List<Widget> screens = [
    RadioView(),
    SebhaView(),
    HadithView(),
    QuranView(),
    SettingView()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "اسلامي",
          ),
        ),
        body: screens[selectedindex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/radio.png")),
                label: "راديو"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/sebha-1.png")),
                label: "سبحه"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage("assets/icons/quran-quran-svgrepo-com.png")),
                label: "الاحاديث"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/quran.png")),
                label: "قران"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "اعدادات"),
          ],
          currentIndex: selectedindex,
          onTap: (index) {
            selectedindex = index;

            setState(() {});
          },
        ),
      ),
    );
  }
}
