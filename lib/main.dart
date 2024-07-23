import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/widget_010.dart';
import 'package:flutter_widgets/widgets/widget_011.dart';
import 'package:flutter_widgets/widgets/widget_012.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Widgets',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      home: Widget012(),
    );
  }
}
