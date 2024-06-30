

import 'package:flutter/material.dart';

class Widget002 extends StatelessWidget {
  const Widget002({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AboutListTile(
        icon: Icon(Icons.info_outline_rounded),
        applicationIcon: FlutterLogo(),
        applicationName: 'Widgets List',
        applicationVersion: '1.0.0',
        aboutBoxChildren: [
          Text('Information about Widgets List application'),
        ],
      ),
    );
  }
}