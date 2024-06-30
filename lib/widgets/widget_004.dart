import 'package:flutter/material.dart';

class Widget004 extends StatelessWidget {
  const Widget004({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          child: const Text('Click Me'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                alignment: Alignment.topCenter,
                backgroundColor: Colors.yellow,
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('close'),
                  ),
                ],
                title: const Text('Flutter App'),
                contentPadding: const EdgeInsets.all(20.0),
                content: const Text('Flutter alert dialog'),
              ),
              
            );
          }),
    );
  }
}
