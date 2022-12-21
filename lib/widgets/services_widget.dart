import 'package:flutter/material.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({
    Key? key,
    required this.value, required this.title, required this.subTitle,
  }) : super(key: key);

  final int value;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
            "assets/illustration/DrawKit Vector Illustration Team Work ($value).png"),
        SelectableText(
          title,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        SelectableText(
          subTitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14
          ),
        )
      ],
    );
  }
}