import 'dart:ui';

import 'package:flutter/material.dart';

class Widget001 extends StatelessWidget {
  const Widget001({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => const AboutDialog(
              applicationName: 'Flutter Dialog',
              children: [
                Text('Hello Flutter'),
              ],
            ),
          );
        },
        child: const Text('Click Me'),
      ),
    );
  }
}
