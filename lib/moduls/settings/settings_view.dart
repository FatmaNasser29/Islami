import 'package:flutter/material.dart';
// import 'package:magic_dropdown/magic_dropdown.dart';
import 'package:animated_menu/animated_menu.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Column(
      children: const [
        SizedBox(height: 10),
        Text('Item 1'),
        Divider(),
        Text('Item 2'),
        Divider(),
        Text('Item 3'),
        Divider(),
        Text('Item 4'),
        Divider(),
        Text('Item 5'),
        SizedBox(height: 10),
      ],
    );
  }
}




// Padding(
    //   padding: const EdgeInsets.all(15),
    //   child: Column(
    //     children: [
    //       Text(
    //         "Setting",
    //         style: theme.textTheme.bodyMedium,
    //         textAlign: TextAlign.center,
    //       ),
    //       Text(
    //         "Language",
    //         style: theme.textTheme.titleMedium,
    //       ),
    //       Text(
    //         "Theme",
    //         style: theme.textTheme.titleMedium,
    //       ),
    //       // MagicDropdown(["Light,Dark"]),
    //     ],
    //   ),
    // );