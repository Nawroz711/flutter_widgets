import 'package:flutter/material.dart';

class Widget006 extends StatefulWidget {
  const Widget006({super.key});

  @override
  State<Widget006> createState() => _Widget006State();
}

class _Widget006State extends State<Widget006> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: double.infinity,
          height: 300.0,
          color: Colors.white10,
          padding: const EdgeInsets.all(10),
          child: AnimatedAlign(
            alignment: selected ? Alignment.topLeft : Alignment.topRight,
            duration: const Duration(seconds: 1),
            curve: Curves.fastEaseInToSlowEaseOut,
            child: const FlutterLogo(
              size: 50,
            ),
          ),
        ),
      ),
    );
  }
}
