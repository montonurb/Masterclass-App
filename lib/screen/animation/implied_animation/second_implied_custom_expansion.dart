// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:masterclass_app/theme/app_theme.dart';

class CustomExpansion extends StatefulWidget {
  Map texts;
  int index;

  CustomExpansion({Key? key, required this.texts, required this.index})
      : super(key: key);

  @override
  State<CustomExpansion> createState() => _CustomExpansionState();
}

class _CustomExpansionState extends State<CustomExpansion> {
  double turns = 0.0;
  Color colorButton = Colors.black;
  double heightFactor = 0.0;
  bool onPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (!onPressed) {
            turns = 0.5;
            colorButton = Colors.blue;
            heightFactor = 1.0;
            onPressed = true;
          } else {
            heightFactor = 0.0;
            turns = 0.0;
            colorButton = Colors.black;
            onPressed = false;
          }
        });
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
            child: Container(
              height: 50,
              color: Colors.white,
              child: Row(
                children: [
                  Text(
                    "${widget.texts["title"]} ${widget.index}",
                    style: TextStyle(
                      color: colorButton,
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  AnimatedRotation(
                    turns: turns,
                    duration: const Duration(seconds: 1),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: colorButton,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ClipRRect(
            child: AnimatedAlign(
              duration: const Duration(seconds: 1),
              alignment: Alignment.center,
              heightFactor: heightFactor,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Column(
                  children: [
                    const FlutterLogo(size: 75),
                    Text(
                      "${widget.texts["textBody"]}",
                      style: AppTheme.textStyle.bodyText,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
