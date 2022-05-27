import 'package:flutter/material.dart';
import 'package:masterclass_app/models/animation/text_model.dart';
import 'package:masterclass_app/screen/animation/implied_animation/second_implied_custom_expansion.dart';

class SecondImpliedAnimationScreen extends StatefulWidget {
  const SecondImpliedAnimationScreen({Key? key}) : super(key: key);

  @override
  State<SecondImpliedAnimationScreen> createState() =>
      _SecondImpliedAnimationScreenState();
}

class _SecondImpliedAnimationScreenState
    extends State<SecondImpliedAnimationScreen> {
  List texts = listText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyScrollView"),
      ),
      body: ListView.builder(
          itemCount: texts.length,
          itemBuilder: (BuildContext context, int index) {
            return CustomExpansion(texts: texts[index], index: index);
          }),
    );
  }
}
