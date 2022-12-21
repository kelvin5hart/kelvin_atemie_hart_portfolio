import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants.dart';


class SocialMediaIconsWidget extends StatelessWidget {
  const SocialMediaIconsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: socialMediaLinks
          .map(
            (e) {
          final Uri url = Uri.parse(e.link);
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () async {
                if (await canLaunchUrl(url )) {
                  await launchUrl(url);
                }
              },
              icon: FaIcon(
                e.name,
                color: Theme.of(context).primaryColor,
              ),
            ),
          );
        },
      )
          .toList(),
    );
  }
}