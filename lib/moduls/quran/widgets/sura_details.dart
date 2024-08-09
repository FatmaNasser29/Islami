import 'package:flutter/material.dart';
import 'package:islami/core/theme/application_theme.dart';

class SuraDetails extends StatelessWidget {
  static const String routeName = "SuraDetails";
  const SuraDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
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
                    "اسم السوره",
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.play_circle_fill_sharp)
                ],
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
