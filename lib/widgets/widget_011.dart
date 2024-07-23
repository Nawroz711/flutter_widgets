import 'package:flutter/material.dart';

class Widget011 extends StatefulWidget {
  const Widget011({super.key});

  @override
  State<Widget011> createState() => _Widget011State();
}

class _Widget011State extends State<Widget011> with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          if (_isPlay == false) {
            _controller.forward();
            _isPlay = true;
          } else {
            _controller.reverse();
            _isPlay = false;
          }
        },
        child:
            AnimatedIcon(icon: AnimatedIcons.play_pause, progress: _controller, size: 100,),
      ),
    );
  }
}
