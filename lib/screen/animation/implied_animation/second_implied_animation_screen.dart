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
        body: Padding(
          padding:
              const EdgeInsets.only(top: 60, left: 15, right: 15, bottom: 10),
          child: Column(
            children: [
              HeaderWidget(title: "Animação Implícita", logo: false),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.85,
                child: ListView.builder(
                    itemCount: texts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CustomExpansion(texts: texts[index], index: index);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
