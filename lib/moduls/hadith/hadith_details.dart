import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/theme/application_theme.dart';
import 'package:islami/moduls/hadith/hadith_view.dart';

class HadithDetails extends StatelessWidget {
  static const String routeName = "HadithDetails";

  HadithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var data = ModalRoute.of(context)?.settings.arguments as HadithData;
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
                    "${data.title}",
                    style: theme.textTheme.titleMedium,
                  ),
                ],
              ),
              Divider(),
              Expanded(
                child: ListView(
                  children: [
                    Text(
                      "${data.body}",
                      style: theme.textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
