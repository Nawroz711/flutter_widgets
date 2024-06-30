

import 'package:flutter/material.dart';

class Widget005 extends StatelessWidget {
  const Widget005({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 200.0,
        color: Colors.deepPurpleAccent,
        child: const Align(
          alignment: Alignment.centerLeft,
          child: FlutterLogo(
            size: 50,
          ),
        ),
      ),
    );
  }
}