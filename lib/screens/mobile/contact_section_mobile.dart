import 'package:flutter/material.dart';

import '../../widgets/contact_info_widget.dart';
import '../../widgets/download_resume_widget.dart';
import '../../widgets/social_media_icons_widget.dart';

class ContactSectionMobile extends StatelessWidget {
  const ContactSectionMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      height: 300,
      child: Column(
        children: [
          const SizedBox(height: 30,),
          Container(
            margin: const EdgeInsets.all(10),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Email:",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(fontSize: 14)),
                    Text("atemiehartkelvin@rocketmail.com",
                        style: Theme.of(context)
                            .textTheme
                            .headline3
                            ?.copyWith(fontSize: 20))
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Mobile Number:",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(fontSize: 14)),
                    Text("+2349056025603",
                        style: Theme.of(context)
                            .textTheme
                            .headline3
                            ?.copyWith(fontSize: 20))
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const FittedBox(child: SocialMediaIconsWidget()),
                const SizedBox(
                  height: 15,
                ),
                const FittedBox(child: DownloadResume())
              ],
            ),
          ),
        ],
      ),
    );
  }
}
