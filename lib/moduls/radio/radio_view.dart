import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var lang = AppLocalizations.of(context)!;

    var theme = Theme.of(context);
    return Center(
        child: Column(
      children: [
        SizedBox(
          height: 130,
        ),
        Image.asset(
          "assets/images/radio-icon-png-old-radio-png-vector-transparent@3x.png",
          scale: 3,
        ),
        SizedBox(
          height: 60,
        ),
        Text(
          lang.holyQuranRadio,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(
          height: 70,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/images/Icon metro-back.png",
              scale: 3,
            ),
            Image.asset(
              "assets/images/Icon awesome-play.png",
              scale: 3,
            ),
            Image.asset(
              "assets/images/Icon metro-next.png",
              scale: 3,
            ),
          ],
        )
      ],
    ));
  }
}
