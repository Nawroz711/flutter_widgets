import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/widget_001.dart';
import 'package:flutter_widgets/widgets/widget_002.dart';
import 'package:flutter_widgets/widgets/widget_003.dart';
import 'package:flutter_widgets/widgets/widget_004.dart';
import 'package:flutter_widgets/widgets/widget_005.dart';
import 'package:flutter_widgets/widgets/widget_006.dart';

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
      home: Widget006(),
    );
  }
}
