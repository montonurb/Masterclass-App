import 'package:flutter/material.dart';

class FirstImpliedAnimationScreen extends StatefulWidget {
  const FirstImpliedAnimationScreen({Key? key}) : super(key: key);

  @override
  State<FirstImpliedAnimationScreen> createState() =>
      _FirstImpliedAnimationScreenState();
}

class _FirstImpliedAnimationScreenState
    extends State<FirstImpliedAnimationScreen> {
  var button = ButtonFloating.circle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GestureDetector(
          onTap: () {
            setState(() {
              if (button.width == 80.0) {
                button = ButtonFloating.square();
              } else {
                button = ButtonFloating.circle();
              }
            });
          },
          child: AnimatedAlign(
            duration: const Duration(seconds: 1),
            alignment: button.alignment,
            child: AnimatedContainer(
              curve: Curves.slowMiddle,
              duration: const Duration(seconds: 1),
              height: button.height,
              width: button.width,
              decoration: BoxDecoration(
                color: button.color,
                borderRadius: BorderRadius.circular(button.border),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonFloating {
  double height = 80.0;
  double width = 80.0;
  double border = 40.0;
  Alignment alignment = Alignment.bottomRight;
  Color color = Colors.blue;

  ButtonFloating({
    required this.height,
    required this.width,
    required this.border,
    required this.alignment,
    required this.color,
  });

  factory ButtonFloating.circle() {
    return ButtonFloating(
      height: 80.0,
      width: 80.0,
      border: 40.0,
      alignment: Alignment.bottomRight,
      color: Colors.blue,
    );
  }

  factory ButtonFloating.square() {
    return ButtonFloating(
      height: 80.0,
      width: 160.0,
      border: 0.0,
      alignment: Alignment.topCenter,
      color: Colors.purple,
    );
  }
}
