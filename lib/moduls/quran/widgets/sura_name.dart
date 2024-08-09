import 'package:flutter/material.dart';

class SuraName extends StatelessWidget {
  final SuraData data;

  SuraName({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            textAlign: TextAlign.center,
            data.number,
            style: theme.textTheme.bodyLarge,
          ),
        ),
        SizedBox(height: 30, child: VerticalDivider()),
        Expanded(
          child: Text(
            textAlign: TextAlign.center,
            data.name,
            style: theme.textTheme.bodyLarge,
          ),
        )
      ],
    );
  }
}

class SuraData {
  String name;
  String number;
  SuraData({required this.name, required this.number});
}
