import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/theme/application_theme.dart';
import 'package:islami/moduls/quran/widgets/sura_name.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "SuraDetails";
  const SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var data = ModalRoute.of(context)?.settings.arguments as SuraData;

    if (versesList.isEmpty) loadQuranDetails(data.number);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "اسلامي",
            style: theme.textTheme.titleLarge,
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              color: Color(0xFFF8F8F8).withOpacity(0.5),
              borderRadius: BorderRadius.circular(25)),
          margin: EdgeInsets.only(top: 120, bottom: 98, left: 29, right: 29),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سوره ${data.name}",
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.play_circle_fill_sharp)
                ],
              ),
              Divider(),
              Expanded(
                  child: ListView.builder(
                itemBuilder: (context, index) => Text(
                  " {${index + 1}} ${versesList[index]}",
                  style: theme.textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
                itemCount: versesList.length,
              ))
            ],
          ),
        ),
      ),
    );
  }

  List<String> versesList = [];
  Future<void> loadQuranDetails(String suranumber) async {
    String content = await rootBundle.loadString("assets/sura/$suranumber.txt");
    versesList = content.split("\n");
    setState(() {});
  }
}
