import 'package:flutter/material.dart';
import 'package:islami/core/theme/application_theme.dart';

class SebhaView extends StatelessWidget {
  const SebhaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Image.asset(
          "assets/images/head of seb7a.png",
          scale: 4,
        ),
        Image.asset(
          "assets/images/body of seb7a.png",
          scale: 3,
        ),
        Text("عدد التسبيحات"),
        SizedBox(
          height: 20,
        ),
        Text(
          "33",
          style: TextStyle(
            backgroundColor: ApplicationThemeData.primaryColor,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("سبحان الله"),
        )
      ],
    );
  }
}
