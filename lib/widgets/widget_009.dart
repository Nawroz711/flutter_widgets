import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Widget009 extends StatefulWidget {
  const Widget009({super.key});

  @override
  State<Widget009> createState() => _Widget009State();
}

class _Widget009State extends State<Widget009> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          width: double.infinity,
          height: 100,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _bool = !_bool;
            });
          },
          child: const Text(
            'switch',
          ),
        ),
        AnimatedCrossFade(
          firstChild: Image.asset(
            'assets/images/img (1).png',
            width: double.infinity,
          ),
          secondChild: Image.asset(
            'assets/images/img (2).png',
            width: double.infinity,
          ),
          crossFadeState:
              _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 1),
        ),
      ],
    );
  }
}
