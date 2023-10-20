import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool tapped = false;
  double size = 150;
  double fontSize = 20;
  final duration = const Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => setState(() => tapped = !tapped),
        child: Center(
          child: AnimatedContainer(
            duration: duration,
            width: tapped ? size * 2 : size,
            height: tapped ? size * 2 : size,
            decoration: BoxDecoration(
              color: tapped
                  ? Color.fromARGB(255, 4, 133, 231)
                  : Color.fromARGB(211, 255, 251, 0),
              borderRadius:
                  tapped ? const BorderRadius.all(Radius.circular(60)) : null,
            ),
          ),
        ),
      ),
    );
  }
}
