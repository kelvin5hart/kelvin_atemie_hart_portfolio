import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  final String heading;
  final String info;
  const ContactInfo({super.key, required this.heading, required this.info});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(heading, style: Theme.of(context).textTheme.headline4),
        Text(info, style: Theme.of(context).textTheme.headline3)
      ],
    );
  }
}
