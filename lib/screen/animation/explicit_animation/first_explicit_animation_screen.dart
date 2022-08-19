import 'package:flutter/material.dart';
import 'package:masterclass_app/screen/widgets/header_widget.dart';
import 'package:masterclass_app/theme/app_theme.dart';

class FirstExplicitAnimationScreenMyWidget extends StatefulWidget {
  const FirstExplicitAnimationScreenMyWidget({Key? key}) : super(key: key);

  @override
  State<FirstExplicitAnimationScreenMyWidget> createState() =>
      FirstExplicitAnimationScreenMyWidgetState();
}

class FirstExplicitAnimationScreenMyWidgetState
    extends State<FirstExplicitAnimationScreenMyWidget>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Size?> sizeAnimation;
  late Animation<Color?> colorAnimation;
  late Animation alignAnimation;
  late Animation<double?> borderAnimation;

  void toggle() {
    if (controller.value == 0) {
      controller.forward();
    } else {
      controller.reverse();
    }
  }

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    sizeAnimation = SizeTween(
      begin: const Size(80, 80),
      end: const Size(160, 80),
    ).animate(controller);

    colorAnimation = ColorTween(
      begin: AppTheme.colors.primary,
      end: AppTheme.colors.textHighlight,
    ).animate(controller);

    alignAnimation = AlignmentTween(
      begin: Alignment.bottomRight,
      end: Alignment.topCenter,
    ).animate(controller);

    borderAnimation = Tween<double?>(begin: 40.0, end: 0.0).animate(controller);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.colors.scaffoldBackground,
        body: Padding(
          padding:
              const EdgeInsets.only(top: 35, left: 15, right: 15, bottom: 10),
          child: Column(
            children: [
              HeaderWidget(title: "Button Animation Explícita", logo: false),
              const SizedBox(height: 16),
              Expanded(
                child: GestureDetector(
                  onTap: toggle,
                  child: AnimatedBuilder(
                      animation: controller,
                      builder: (context, child) {
                        return Align(
                          alignment: alignAnimation.value,
                          child: Container(
                            height: sizeAnimation.value?.height,
                            width: sizeAnimation.value?.width,
                            decoration: BoxDecoration(
                              color: colorAnimation.value,
                              borderRadius:
                                  BorderRadius.circular(borderAnimation.value!),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
