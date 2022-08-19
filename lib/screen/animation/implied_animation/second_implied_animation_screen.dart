import 'package:flutter/material.dart';
import 'package:masterclass_app/models/animation/text_model.dart';
import 'package:masterclass_app/screen/animation/implied_animation/second_implied_custom_expansion.dart';
import 'package:masterclass_app/screen/widgets/header_widget.dart';
import 'package:masterclass_app/theme/app_theme.dart';

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.colors.scaffoldBackground,
        body: Column(
          children: [
            HeaderWidget(title: "Animação Implícita - Lista", logo: false),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemCount: texts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CustomExpansion(texts: texts[index], index: index);
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
