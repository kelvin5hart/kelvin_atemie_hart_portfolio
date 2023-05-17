import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TypeWriterTextWidget extends StatelessWidget {

  final double fontSize;

   const TypeWriterTextWidget({
    Key? key, required this.fontSize
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: fontSize) ?? const TextStyle(),
        child: FittedBox(
          child: AnimatedTextKit(
            totalRepeatCount: 100,
            animatedTexts: [
              TypewriterAnimatedText(
                'Kelvin Atemie-Hart',
                speed: const Duration(milliseconds: 200),
              ),
              TypewriterAnimatedText(
                'A Mobile Developer',
                speed: const Duration(milliseconds: 200),
              ),
              TypewriterAnimatedText(
                'A Project Manager',
                speed: const Duration(milliseconds: 200),
              ),
              TypewriterAnimatedText(
                'A Front-End Developer',
                speed: const Duration(milliseconds: 200),
              ),
            ],
            onTap: () {
              // print("Tap Event");
            },
          ),
        ),
      ),
    );
  }
}